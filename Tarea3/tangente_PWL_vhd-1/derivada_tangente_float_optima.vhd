--======================================================--
--                                                      --
--  NORTHEASTERN UNIVERSITY                             --
--  DEPARTMENT OF ELECTRICAL AND COMPUTER ENGINEERING   --
--  RAPID PROTOTYPING LABORATORY                        --
--                                                      --
--  FILE         | float2fixed_signed.vhd               --
--  -------------+------------------------------------  --
--  DESCRIPTION  | Conversion from floating-point to    --
--               | signed fixed-point representation.   --
--  -------------+------------------------------------  --
--  AUTHOR       | Pavle Belanovic                      --
--  -------------+------------------------------------  --
--  DATE         | 20 June 2002                         --
--                                                      --
--======================================================--

--******************************************************************************--
--                                                                              --
--	Copyright (C) 2000 Pavle Belanovic                                          --
--                                                                              --
--	This program is free software; you can redistribute it and/or               --
--	modify it under the terms of the GNU General Public License                 --
--	as published by the Free Software Foundation; either version 2              --
--	of the License, or (at your option) any later version.                      --
--                                                                              --
--	This program is distributed in the hope that it will be useful,             --
--	but WITHOUT ANY WARRANTY; without even the implied warranty of              --
--	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the               --
--	GNU General Public License for more details.                                --
--                                                                              --
--	You should have received a copy of the GNU General Public License           --
--	along with this program; if not, write to the Free Software                 --
--	Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA. --
--                                                                              --
--******************************************************************************--

--======================================================--
--                      LIBRARIES                       --
--======================================================--

-- IEEE Libraries --
library IEEE,lpm;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

--use IEEE.std_logic_signed.all;
use lpm.lpm_components.all;
-- float


----------------------------------------------------------
--       Floating point to fixed point conversion       --
----------------------------------------------------------
entity derivada_tangente_hiperbolica is

	port
	(
		dataa					:	in	std_logic_vector(31 downto 0);
		CLK						:	in	std_logic;
		READY					:	in	std_logic;
		DONE					:	out	std_logic;
		--outputs
		result					:	out	std_logic_vector(31 downto 0)				

	);
end derivada_tangente_hiperbolica;

----------------------------------------------------------
--       Floating point to fixed point conversion       --
----------------------------------------------------------
architecture MONOCICLO of derivada_tangente_hiperbolica is
--======================================================--
--                     COMPONENTS                       --
--======================================================--


--======================================================--
--                     FUNCTIONS                        --
--======================================================--
	--function to calculate ceil(log2(n))
	function ceil_log2 (input: integer) return integer is
		variable max		:	integer :=1; -- exp=0 => max=2^0=1
		variable exp		:	integer :=0;
	begin
		log_loop: while max < input loop
			exp	:=	exp+1;	-- increment exponent
			max	:=	max*2;	-- max = 2^exp
		end loop log_loop;
		return exp; -- exponent that gives (2^exp) >= input
	end ceil_log2;

	function maxval (arg1, arg2 : integer) return integer is
	        variable result: integer;
	begin
     if arg1>arg2 then
         result:=arg1;
     else
         result:=arg2;
     end if;
     return result;
  end maxval;


--======================================================--
--                     CONSTANTS                        --
--======================================================--
	constant	fix_bits		:	integer	:=	25;
	constant	exp_bits		:	integer	:=	8;
	constant	man_bits		:	integer	:=	23;
	constant	bias			:	integer		:=	(2**(exp_bits-1))-1;
	constant	of_limit		:	integer		:=	fix_bits+bias-2;
	constant	shifted_bits	:	integer		:=	fix_bits+man_bits-1;
	constant	shift_bits		:	integer		:=	ceil_log2(shifted_bits);
	constant  	shift2_bits 	: 	integer		:= 	maxval(shift_bits,exp_bits);
--======================================================--
--                      SIGNALS                         --
--======================================================--
	signal  		ENTRADA					:		std_logic_vector(exp_bits+man_bits downto 0);
	signal			SALIDA					:		std_logic_vector(exp_bits+man_bits downto 0);
	signal	floatout		:	std_logic_vector(exp_bits+man_bits downto 0);
	signal	s				:	std_logic									   	:=	'0';
	signal	uf_lt			:	std_logic										:=	'0';
	signal	uf_eq			:	std_logic										:=	'0';
	signal	uf_gt			:	std_logic										:=	'0';
	signal	of_lt			:	std_logic										:=	'0';
	signal	of_eq			:	std_logic										:=	'0';
	signal	of_gt			:	std_logic										:=	'0';
	signal	lt1				:	std_logic										:=	'0';
	signal	underflow1		:	std_logic										:=	'0';
	signal	overflow1		:	std_logic										:=	'0';
	signal	all_zero		:	std_logic										:=	'0';
	signal	n_all_zero		:	std_logic										:=	'0';
	signal	all_zero1		:	std_logic										:=	'0';
	signal	all_zero2		:	std_logic										:=	'0';
	signal	all_zero3		:	std_logic										:=	'0';
	signal	all_zero4		:	std_logic										:=	'0';
	signal	exc_out2		:	std_logic										:=	'0';
	signal	exc_in1			:	std_logic										:=	'0';
	signal	ctrl			:	std_logic										:=	'0';
	signal	bias_vector		:	std_logic_vector(exp_bits-1 downto 0)			:=	(others=>'0');
	signal	of_vector		:	std_logic_vector(exp_bits-1 downto 0)			:=	(others=>'0');
	signal	e_por_22		:	std_logic_vector(exp_bits-1 downto 0)			:=	(others=>'0');
	signal	e_div_1			:	std_logic_vector(exp_bits-1 downto 0)			:=	(others=>'0');
	signal	f				:	std_logic_vector(man_bits-1 downto 0)			:=	(others=>'0');
	signal	shift			:	std_logic_vector(exp_bits-1 downto 0)			:=	(others=>'0');
	signal	shift1			:	std_logic_vector(shift_bits-1 downto 0)			:=	(others=>'0');
	signal	shift2			:	std_logic_vector(shift2_bits-1 downto 0)		:=	(others=>'0');
	signal	f1				:	std_logic_vector(shifted_bits-1 downto 0)		:=	(others=>'0');
	signal	fix1			:	std_logic_vector(shifted_bits-1 downto 0)		:=	(others=>'0');
	signal	fix_out4		:	std_logic_vector(fix_bits-1 downto 0)			:=	(others=>'0');
	signal 	sub_wire0		: 	std_logic_vector (0 downto 0);
	signal	data			:  	std_logic_2D (exp_bits+ man_bits-1 downto 0, 0 downto 0);
--******************************************************--
--======================================================--
--**              ARCHITECTURE BEGINS                 **--
--======================================================--
--******************************************************--
begin
--======================================================--
--             COMPONENT INSTANTIATIONS                 --
--======================================================--
	--subtractor

		shift<=e_por_22-bias_vector;
	--underflow comparator

		uf_lt<='1' when (e_por_22<bias_vector) else '0';
	--overflow comparator

		of_gt<='1' when (e_por_22>of_vector) else '0';
	--shifter


	lpm_clshift_component : lpm_clshift
	GENERIC MAP (
		lpm_shifttype => "LOGICAL",
		lpm_type => "LPM_CLSHIFT",
		lpm_width => shifted_bits,
		lpm_widthdist => shift_bits
	)
	PORT MAP (
		distance => shift1,
--		direction => sub_wire3,por defecto a la izquierda
		data => f1,
		result => fix1
	);


	--OR gate
	veamos:for i in (exp_bits+ man_bits-1) downto 0 generate
	data(i,0)<=ENTRADA(i);
	end generate; 
--	data<=ENTRADA(exp_bits+man_bits-1 downto 0);
	lpm_or_component : lpm_or
	GENERIC MAP (
		lpm_size => exp_bits+man_bits,
		lpm_type => "LPM_OR",
		lpm_width => 1
	)
	PORT MAP (
		data => data, --e and f (no s)
		result => sub_wire0
	);
	n_all_zero<=sub_wire0(0);

--======================================================--
--            ASYNCHRONOUS SIGNAL ASSIGNMENTS           --
--======================================================--
	--level 0
	ENTRADA			<=	dataa;
	s				<=	ENTRADA(exp_bits+man_bits);
	e_por_22		<=	ENTRADA(exp_bits+man_bits-1 downto man_bits)+22;
	e_div_1			<=	ENTRADA(exp_bits+man_bits-1 downto man_bits);
	f				<=	ENTRADA(man_bits-1 downto 0);
	all_zero1		<=	NOT(n_all_zero);
	bias_vector		<=	conv_std_logic_vector(bias,exp_bits);
	of_vector		<=	conv_std_logic_vector(of_limit,exp_bits);
	overflow1		<=	of_gt;
	lt1				<=	uf_lt;
	underflow1		<=	lt1 XOR all_zero1;
	f1(shifted_bits-1 downto man_bits+1)	<=	(others=>'0');
	f1(man_bits)							<=	'1'; --implied 1
	f1(man_bits-1 downto 0)					<=  f;
	fix_out4		<=	fix1(shifted_bits-1 downto man_bits-1);
	floatout(31)<='0';
	
	process(overflow1,underflow1,fix_out4,f,e_div_1)
	variable temp_seleccion: std_logic_vector(1 downto 0);
	variable SELECTION: std_logic_vector(2 downto 0);
	variable exponente: std_logic_vector (7 downto 0);
	begin
	temp_seleccion:=overflow1&underflow1;
	SELECTION:=fix_out4(24 downto 22);
	case temp_seleccion is 
	when "10" =>
		floatout(30 downto 0)<="000"&X"0000000" ;
	when "01" =>
		floatout(30 downto 0)<="011"&X"F800000" ;
	when others =>
		case SELECTION is
            when "000" =>
				case fix_out4(21 downto 20) is
				when "00" =>
	                floatout(30 downto 23)<=X"7E";
					floatout(22 downto 0)<=(others=>'1');
				when others=>
					floatout(30 downto 23)<=X"7E";
				floatout(22 downto 21)<="11";
				floatout(20 downto 0)<=not fix_out4(21 downto 1);
				end case;
				--floatout(22 downto 21)<="11";
				--floatout(20 downto 0)<=not fix_out4(21 downto 1);
            when "001" =>
                floatout(30 downto 23)<=X"7E";
				floatout(22)<='0';
                floatout(21 downto 0)<=not fix_out4(21 downto 0);
            when "010" =>
                floatout(30 downto 23)<=X"7D";
				floatout(22)<='0';
                floatout(21 downto 0)<=not fix_out4(21 downto 0);
            when "011" =>
                floatout(30 downto 23)<=X"7B";
                floatout(22 downto 1)<=not fix_out4(21 downto 0);
				floatout(0)<='0';
            when "100" =>
                floatout(30 downto 23)<=X"7A";
                floatout(22 downto 1)<=not fix_out4(21 downto 0);
				floatout(0)<='0';
            when "101" =>
                floatout(30 downto 23)<=X"79";
                floatout(22 downto 1)<=not fix_out4(21 downto 0);
				floatout(0)<='0';
            when "110" =>
                floatout(30 downto 23)<=X"78";
                floatout(22 downto 1)<=not fix_out4(21 downto 0);
				floatout(0)<='0';
            when "111" =>
				for i in 21 downto 0 loop
					if (fix_out4(i) ='0') then 
						exponente:=conv_std_logic_vector((98+i),8);
						exit;
					else
						exponente:=conv_std_logic_vector((97),8);
					end if;
				end loop;		
                floatout(30 downto 23)<=exponente;
                floatout(22 downto 0)<=(others=>'1');
                                            
            when others =>
                null;
        	end case;
	end case;
	end process;
	--level 1

	--level 2
	--level 3
	--level 4

  -- added by xiaojun for type dismatch bug
	shift2(shift2_bits-1 downto exp_bits)	<= ( others =>'0');
	shift2(exp_bits-1 downto 0)		<=   shift;
	shift1 <= shift2(shift_bits-1 downto 0);
	
	--result							<=	floatout;
	synchronous: process (CLK)
	begin
		if(clk'event and (CLK='1')) then
			if (READY='1') then
				DONE										<=	'1';
				result										<=	floatout;
			else
				DONE<='0';
			end if	;		
		end if;--CLK
	end process;--synchronous

end MONOCICLO; -- end of architecture
--******************************************************--
--======================================================--
--**                ARCHITECTURE ENDS                 **--
--======================================================--
--******************************************************--
