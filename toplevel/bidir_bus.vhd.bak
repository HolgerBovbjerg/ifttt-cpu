LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY bidir_bus IS
    PORT(
        io_bidir_port   	: INOUT STD_LOGIC_VECTOR (7 DOWNTO 0);
        i_OUT_enable 	: IN STD_LOGIC;
		  i_CLK 				: IN STD_LOGIC;
        i_DATA_in     	: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        o_DATA_out    	: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		  );
END bidir_bus;

ARCHITECTURE behaviour OF bidir_bus IS
	SIGNAL  r_INPUT_reg  : STD_LOGIC_VECTOR (7 DOWNTO 0);  -- DFF that stores 
																-- value from input.
	SIGNAL  r_Feedback_reg  : STD_LOGIC_VECTOR (7 DOWNTO 0);  -- DFF that stores 
BEGIN                                        -- feedback value.
    PROCESS(i_CLK)
    BEGIN
		 IF (rising_edge(i_CLK)) then  -- Creates the flipflops
			r_INPUT_reg  <= i_DATA_in;                    
			o_DATA_out <= r_Feedback_reg;                  
		 END IF;
	 END PROCESS;  
	 
    PROCESS (i_OUT_enable, io_bidir_port, r_INPUT_reg)          -- Behavioral representation 
    BEGIN                    -- of tri-states.
        IF( i_OUT_enable = '0') THEN
            io_bidir_port <= "ZZZZZZZZ";
            r_Feedback_reg <= io_bidir_port;
        ELSE
            io_bidir_port <= r_INPUT_reg; 
            r_Feedback_reg <= io_bidir_port;
        END IF;
    END PROCESS;
END behaviour;
