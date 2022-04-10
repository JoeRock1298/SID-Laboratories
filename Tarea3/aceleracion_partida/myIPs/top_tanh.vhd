LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY top_tanh IS
	generic(constant pendiente : integer := 1)
	; 
	port
	(
		clk 			:  IN  STD_LOGIC;
		reset_n 		:  IN  STD_LOGIC;
		chipselect 		:  IN  STD_LOGIC;
		address			:  IN STD_LOGIC_VECTOR(1 downto 0);
--		read_n :  IN  STD_LOGIC;
		begintransfer	:  IN  STD_LOGIC;
		write_n 		:  IN  STD_LOGIC;
		writedata 		:  IN  STD_LOGIC_VECTOR(31 downto 0);
--		waitrequest_n 	:  OUT STD_LOGIC;
--		irq : OUT STD_LOGIC;
		readdata 		:  OUT  STD_LOGIC_VECTOR(31 downto 0)
	);
END top_tanh;

ARCHITECTURE rtl OF top_tanh IS 

component tangente_hiperbolica

	port
	(
		--inputs
		dataa					:	in	std_logic_vector(31 downto 0);
		CLK						:	in	std_logic;
		READY					:	in	std_logic;
		DONE					:	out	std_logic;
		--outputs
		result					:	out	std_logic_vector(31 downto 0)				

	);
end component;

component derivada_tangente_hiperbolica 

	port
	(
		dataa					:	in	std_logic_vector(31 downto 0);
		CLK						:	in	std_logic;
		READY					:	in	std_logic;
		DONE					:	out	std_logic;
		--outputs
		result					:	out	std_logic_vector(31 downto 0)				

	);
end component;


signal data_aux  		: std_logic_vector ( 31 downto 0);
signal aux_sig,aux_deri	: std_logic_vector (31 downto 0);




BEGIN 

U1 : tangente_hiperbolica
PORT MAP(dataa => data_aux,
		 clk => clk,		 
		 ready => begintransfer,
		 done => open,
		 result => aux_sig
		);


U2 : derivada_tangente_hiperbolica
PORT MAP(dataa => data_aux,
		 clk => clk,		
		 ready => begintransfer,
		 done => open,
		 result => aux_deri
		);


process(clk, reset_n)
	begin
		if reset_n = '0' then
			data_aux <= (others => '0');
		elsif clk'event and clk = '1' then
			if chipselect = '1' then
				if write_n = '0'  and address="11" then --write operation
					data_aux<=writedata;
				else --read operation
					if address="00" then --leemos la sigmoide
						readdata<=aux_sig;
					elsif address="01" then
						readdata<=aux_deri;
					end if;
				end if;
			end if;
		end if;
	end process;




END rtl; 
