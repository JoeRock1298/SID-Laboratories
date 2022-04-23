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
signal result_rom: std_logic_vector(19 downto 0);--)unresolved_ufixed(-1 downto -8); // 20 bits
signal valor: float32;
signal valor1: unresolved_ufixed(31 downto 0);
signal dataa1, valor2, mod_result : std_logic_vector(31 downto 0);
signal signo : std_logic;
 
signal overflow_w, overflow_r :std_logic;

--attribute romstyle : string;
--attribute romstyle of memoria : signal is "M9K";
begin
--Float to fix section
valor<=to_float('0'&dataa1(30 downto 0)); -- getting module values // comprobar esto en el TB
valor1<=to_ufixed(valor,24,-7); -- generating ROM addresses // comprobar en el TB si cambia algo pero esta parte no deberia ser necesaria
valor2<=to_slv(valor1); -- converting it to standard logic vector 

--checking is the input is greater than 4
overflow:process(valor)
begin
	if valor < to_float(4) then
		overflow_w <= '0';
	else
		overflow_w <= '1';
	end if;
end process;

memory:process(clk)
begin
    if clk'event and clk='1' then
 
		  dataa1 <= dataa; -- Registering input
		  result_rom <= memoria(conv_integer(valor2(8 downto 0))); -- accesing ROM
		  signo <= dataa1(31);
		  overflow_r <= overflow_w;	  
		  --Registering the output
		  result <= signo & mod_result(30 downto 0); --getting result
		  
    end if;
end process;

-- Fix to Float section. Adding asintotic value
mod_result<= to_slv(to_float(to_ufixed(result_rom,-1,-20))) when overflow_r = '0'else 
				 to_slv(to_float(1));
				 
end sincrona;
