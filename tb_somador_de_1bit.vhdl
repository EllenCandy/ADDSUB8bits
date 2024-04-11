-- ghdl -a somador_de_1bit.vhdl tb_somador_de_1bit.vhdl
-- ghdl -r tb_somador_de_1bit --stop-time=xxns --wave=tb_somador_de_1bit.ghw

entity tb_somador_de_1bit is

end entity;

architecture comuta of tb_somador_de_1bit is
    component somador_de_1bit is
        port(
            A   : in bit;
            B   : in bit;
            Cin : in bit;
            S   : out bit;
            Cout: out bit
        );
    end component;

    signal sA, sb, sCin, sS, sCout : bit;
begin

    u_somador_de_1bit : somador_de_1bit port map
    (sA, sB, sCin, sS, sCout);

    u_tb : process
    begin

        sA   <= '0';
        sB   <= '0';
        sCin <= '0';
        wait for 20 ns;

        sA   <= '0';
        sB   <= '0';
        sCin <= '1';
        wait for 20 ns;

        sA   <= '0';
        sB   <= '1';
        sCin <= '0';
        wait for 20 ns;

        sA   <= '0';
        sB   <= '1';
        sCin <= '1';
        wait for 20 ns;

        sA   <= '1';
        sB   <= '0';
        sCin <= '0';
        wait for 20 ns;

        sA   <= '1';
        sB   <= '0';
        sCin <= '1';
        wait for 20 ns; 

        sA   <= '1';
        sB   <= '1';
        sCin <= '0';
        wait for 20 ns;

        sA   <= '1';
        sB   <= '1';
        sCin <= '1';
        wait for 20 ns;

        wait;
    end process;
    

end architecture;
