--
-- Filename    : retrieve_exit.vhd
-- 
-- Designer    : D. K. May
-- 
-- Description : Produces the output pointer logic.

library ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY retrieve IS
   GENERIC (
      counter_size : integer := 8;
      buffer_size : integer := 256
   );
   PORT (
      outstrobe : IN std_logic;
      ramadrs : IN std_logic_vector((counter_size * 2) DOWNTO 0);
      buffers : IN std_logic_vector((buffer_size -1) DOWNTO 0);
      rxda : OUT std_logic
   );
END retrieve;

ARCHITECTURE RTL OF retrieve IS
  signal rd0a : std_logic;
BEGIN

-- Produces the decode logic which pointers
-- to each location of the shift register.
retriever : PROCESS (buffers,ramadrs((counter_size-1) downto 0))
BEGIN
  for i in 0 to (buffer_size - 1) loop
    IF (i = ramadrs((counter_size - 1) downto 0)) THEN
      rd0a <= buffers(i);
      exit;
    END IF;
  end loop ;
END PROCESS;

rxda <= rd0a and outstrobe;

END RTL;
