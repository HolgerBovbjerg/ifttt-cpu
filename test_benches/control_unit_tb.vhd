LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned vcontrol_unites
USE ieee.numeric_std.ALL;
 
ENTITY control_unit_tb IS
END control_unit_tb;
 
ARCHITECTURE behavior OF control_unit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT control_unit
    PORT( 	i_CLK : in  STD_LOGIC; -- Clock input
				i_RESET : in  STD_LOGIC; -- Reset input
				i_HALT : in  STD_LOGIC; -- Halt input
				i_OPCODE : in  STD_LOGIC_VECTOR (3 downto 0); -- Opcode input
				i_MEM_state : in STD_LOGIC_VECTOR (1 downto 0);
				i_MEM_access : in STD_LOGIC; 
				o_STATE : out  STD_LOGIC_VECTOR (6 downto 0); -- State output used for enabling blocks depending on state 
				
				-- Interrupt interface ---------------
				i_INTERRUPT_request : in STD_LOGIC;
				i_INTERRUPT_enable : in STD_LOGIC;
				o_INTERRUPT_ack : out STD_LOGIC;
				o_INTERRUPT_PC_set : out STD_LOGIC
        );
    END COMPONENT;
    

   --Inputs
   signal i_CLK : std_logic := '0';
	signal i_RESET : std_logic := '0';
   signal i_OPCODE : std_logic_vector(3 downto 0) := (others => '0');
	
	signal i_HALT : STD_LOGIC := '0'; -- Halt input
	signal i_MEM_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
	signal i_MEM_access : STD_LOGIC := '0'; 
	
	signal i_INTERRUPT_request : STD_LOGIC := '0';
	signal i_INTERRUPT_enable : STD_LOGIC := '0';
	
  
 	--Outputs
   signal o_STATE : std_logic_vector(6 downto 0);
	signal o_INTERRUPT_ack : STD_LOGIC;
	signal o_INTERRUPT_PC_set : STD_LOGIC;
   -- Clock period definitions
   constant c_clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: control_unit PORT MAP (
				i_CLK 					=> i_CLK,
				i_RESET 					=> i_RESET,
				i_HALT 					=> i_HALT,
				i_OPCODE 				=> i_OPCODE,
				i_MEM_state 			=> i_MEM_state,
				i_MEM_access 			=> i_MEM_access,
				o_STATE 					=> o_STATE,
				i_INTERRUPT_request 	=> i_INTERRUPT_request,
				i_INTERRUPT_enable 	=> i_INTERRUPT_enable,
				o_INTERRUPT_ack 		=> o_INTERRUPT_ack,
				o_INTERRUPT_PC_set 	=> o_INTERRUPT_PC_set
        );

   -- Clock process definitions
   i_clk_process :process
   begin
		i_clk <= '0';
		wait for c_clk_period/2;
		i_clk <= '1';
		wait for c_clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		i_RESET <= '1';
      wait for 100 ns;
		-- Stimulus
		i_RESET <= '0';
		i_INTERRUPT_enable <= '1';
		
		for i in 0 to 10 loop
		i_OPCODE <= std_logic_vector(unsigned(i_OPCODE) + 1);
		wait for c_clk_period*6;
		end loop;
		
		i_OPCODE <= "1011"; 
		i_MEM_access <= '1';
		i_MEM_state <= "00";
		wait for c_clk_period*10;
		i_MEM_state <= "01";
		wait for c_clk_period;
		i_MEM_state <= "10";
		wait for c_clk_period*6;
		
		i_OPCODE <= "1100";
		i_MEM_access <= '1';
		i_MEM_state <= "00";
		wait for c_clk_period*10;
		
		i_HALT <= '1';
		wait for c_clk_period*10;
		i_HALT <= '0';
		
		i_MEM_state <= "01";
		wait for c_clk_period;
		i_MEM_state <= "10";
		wait for c_clk_period*6;
		i_MEM_access <= '0';
		
		i_OPCODE <= "1101"; 
		wait for c_clk_period*6;
		
		i_OPCODE <= "1111"; 
		wait for 100 ns;
		
		i_INTERRUPT_request <= '1';
		wait for c_clk_period*6;
		i_INTERRUPT_request <= '0';
		i_INTERRUPT_enable <= '0';
		wait for 100 ns;
		i_INTERRUPT_request <= '1';
		wait for 100 ns;
		i_INTERRUPT_request <= '0';
		
		i_RESET <= '1';
		wait;
   end process;

END;