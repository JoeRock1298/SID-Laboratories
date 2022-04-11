LIBRARY ieee  ; 
LIBRARY ieee_proposed;
--USE fp_lib.float_pkg.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_arith.all  ; 
USE ieee.std_logic_unsigned.all  ;
use ieee_proposed.math_utility_pkg.all;
use ieee_proposed.fixed_pkg.all;
use ieee_proposed.float_pkg.all;
use ieee.math_real.all;
 
ENTITY senoide_vhdl_tb  IS 
  GENERIC (
    fix_bits  : integer   := 25 ;  
    man_bits  : integer   := 23 ;  
    exp_bits  : integer   := 8 ); 
END ; 
 
ARCHITECTURE idea1 OF  senoide_vhdl_tb IS
  SIGNAL ready   :  std_logic  ; 
  SIGNAL done   :  std_logic := '0'  ; 
  SIGNAL salida ,salida2  :  std_logic_vector (exp_bits + man_bits downto 0) := (others => '0')  ; 
  SIGNAL clk ,reset  :  std_logic :='0' ; 
  SIGNAL entrada   :  std_logic_vector (exp_bits + man_bits downto 0)  ; 
  signal count_real: real:=-10.0;
  signal count_unsigned: unsigned (31 downto 0);
  signal count_float: float32;
  signal salida_real,salida_esperada: real;

BEGIN
  DUT  : entity work.sine_mem_9k(sincrona)  
    PORT MAP ( 
 --     ready   => ready  ,
 --     done   => done  ,
      result   => salida  ,
      clk  => clk  ,
      dataa   => entrada   ) ;
    
ready<='1';       
   clk <= not clk after 20 ns;
   reset<='1', '0' after 10 ns, '1' after 50 ns;        

--count_float<=to_float(count,8,23);
  entrada<= to_slv(to_float(count_real,8,23));

  salida_real<=to_real(to_float(salida,8,23));


  process_count: process (clk)
  begin
  	if (clk'event and clk = '1') then
  	   salida_esperada<=SIN(count_real);
  		if (reset = '0') then
  			count_real <= -10.0;
  		else
  			count_real <= count_real+0.01;
  		end if;
  	end if;
  end process;
      
       
END ; 

