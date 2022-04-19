library ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
library ieee_proposed;
use ieee_proposed.math_utility_pkg.all;
use ieee_proposed.fixed_pkg.all;
use ieee_proposed.float_pkg.all;

USE ieee.math_real.all;

entity tanh_mem_9k is
    port (clk:          in std_logic;
          dataa:        in  std_logic_vector (31 downto 0);
          result:       out std_logic_vector (31 downto 0)
          );
end tanh_mem_9k;

architecture sincrona of tanh_mem_9k is
 
TYPE ROM IS ARRAY(0 TO 511) OF std_logic_vector (19 downto 0);--)unresolved_ufixed(-1 downto -9); 2^9 x 20 ROM
FUNCTION INIT_ROM RETURN ROM IS
VARIABLE romvar: ROM;
VARIABLE x: real;

	---   ROM DEFINITION   ---
begin
  for I in 0 TO 511 loop
    
	 -- calculating tanh values for [0, 4[
	 x:= TANH(to_real(to_ufixed(CONV_STD_LOGIC_VECTOR(i,9),1,-7))); -- addres of 9 bits
    
	 -- obtaining the result in the range [0,1[
	 romvar(i):=std_logic_vector(to_ufixed(x,-1,-20)); -- Getting the tanh value in the required format 20 bits
	 
	 
  end loop;
  return romvar;
end;

	---   Pre and post processing   ---
	
signal memoria: ROM := INIT_ROM;
signal result1: std_logic_vector(19 downto 0);--)unresolved_ufixed(-1 downto -8); // 20 bits
signal valor: float32;
signal valor11: unresolved_ufixed(31 downto 0);
signal valor2,mod_result: std_logic_vector(31 downto 0);
signal signo : std_logic; 

--attribute romstyle : string;
--attribute romstyle of memoria : signal is "M9K";
begin
--Float to fix section
valor<=to_float('0'&dataa(30 downto 0)); -- getting module values // comprobar esto en el TB
valor11<=to_ufixed(valor,31,0); -- generating ROM addresses // comprobar en el TB si cambia algo pero esta parte no deberia ser necesaria
valor2<=to_slv(valor11); -- converting it to standard logic vector
signo<=dataa(31);  

memory:process(clk)
begin
    if clk'event and clk='1' then
 
		  result1<=memoria(conv_integer(valor2(8 downto 0))); -- accesing ROM
    end if;
end process;

-- Fix to Float section
mod_result<=to_slv(to_float(to_ufixed(result1,-1,-20)));

-- Add asintotic value and finally add the sign use a function or destination <= signal1 when condition else signal2;
result<=signo & mod_result(30 downto 0); --getting result we need to add the post-processing

end sincrona;

--func definition
--function ternu(cond : boolean; res_true, res_false : unsigned) return unsigned is
--  begin
--     if cond then return res_true;
--     else      return res_false;
--     end if;
--  end function;