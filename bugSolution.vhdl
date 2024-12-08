```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity counter is
  port (
    clk : in std_logic;
    rst : in std_logic;
    count_out : out integer range 0 to 15
  );
end entity;

architecture behavioral of counter is
  signal count : integer range 0 to 15 := 0;
begin
  process (clk, rst)
  begin
    if rst = '1' then
      count <= 0;
    elsif rising_edge(clk) then
      if count < 15 then
        count <= count + 1;
      end if;
    end if;
  end process;

  count_out <= count;
end architecture;
```