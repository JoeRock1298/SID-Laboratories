library ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
library ieee_proposed;
use ieee_proposed.math_utility_pkg.all;
use ieee_proposed.fixed_pkg.all;
use ieee_proposed.float_pkg.all;

USE ieee.math_real.all;
entity sine_mem_9k is
    port (clk:          in std_logic;
          dataa:        in  std_logic_vector (31 downto 0); 
          result:       out std_logic_vector (31 downto 0)
          );
end sine_mem_9k;
architecture sincrona of sine_mem_9k is 
TYPE ROM IS ARRAY(0 TO 1023) OF std_logic_vector (8 downto 0);--)unresolved_ufixed(-1 downto -8);
FUNCTION INIT_ROM RETURN ROM IS
VARIABLE romvar: ROM;
VARIABLE x: real;


begin
  for I in 0 TO 1023 loop
    
	 
	 x:= SIN(to_real(to_ufixed(CONV_STD_LOGIC_VECTOR(i,10),-1,-10))*MATH_PI);

	 
    
	 romvar(i):=std_logic_vector(to_ufixed(x,-1,-9));
	 
	 
  end loop;
  return romvar;
end;
signal memoria: ROM := INIT_ROM;
signal result1: std_logic_vector(8 downto 0);--)unresolved_ufixed(-1 downto -8);
signal valor1: unresolved_ufixed(21 downto -10);
signal valor: float32;
signal valor2,mod_result: std_logic_vector(31 downto 0);
signal signo : std_logic; 

--attribute romstyle : string;
--attribute romstyle of memoria : signal is "M9K";
begin

valor<=to_float('0'&dataa(30 downto 0))/MATH_PI;
valor1<=to_ufixed(valor,21,-10);
valor2<=to_slv(valor1);
signo<=dataa(31) xor valor2(10);  

memory:process(clk)
begin
    if clk'event and clk='1' then
 
		  result1<=memoria(conv_integer(valor2(9 downto 0)));
    end if;
end process;


mod_result<=to_slv(to_float(to_ufixed(result1,-1,-9)));

result<=signo&mod_result(30 downto 0);

end sincrona;