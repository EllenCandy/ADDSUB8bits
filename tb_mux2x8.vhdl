-- ghdl -a mux2x8.vhdl tb_mux2x8.vhdl
-- ghdl -r tb_mux2x8 --stop-time=20ns --wave=tb_mux2x8.ghw

entity tb_mux2x8 is

end entity;

architecture comuta of tb_mux2x8 is
    component mux2x8 is
        port(
            A     : in  bit_vector(7 downto 0);
            B     : in  bit_vector(7 downto 0);
            S     : in  bit;
            Cout  : out bit_vector(7 downto 0)
        );
    end component;

    signal sA     : bit_vector(7 downto 0);
    signal sB     : bit_vector(7 downto 0);
    signal sS     : bit;
    signal sCout  : bit_vector(7 downto 0);
begin

    u_mux2x8 : mux2x8 port map
    (sA, sB, sS, sCout);

    u_tb : process
    begin
        sA <= "10010110";

        sB <= "11000000";

        sS <= '0';
        wait for 4 ns;

        sS <= '1';
        wait for 4 ns;

        wait;
    end process;
    

end architecture;
