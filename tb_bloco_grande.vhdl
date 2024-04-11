
entity tb_bloco_grande is

end entity;

architecture comuta of tb_bloco_grande is
    component bloco_grande is

    port(

        A    : in bit_vector(7 downto 0);
        B    : in bit_vector(7 downto 0);
        Cin  : in bit;
        Cout : out bit;
        S    : inout bit_vector(7 downto 0);
        sel  : in bit;
        ofw  : out bit

);

    end component;

    signal sA    : bit_vector(7 downto 0);
    signal sB    : bit_vector(7 downto 0);
    signal sCin  : bit;
    signal sCout : bit;
    signal sS    : bit_vector(7 downto 0);
    signal ssel  : bit;
    signal sofw  : bit;

begin

    u_bloco_grande : bloco_grande port map
    (sA, sB, sCin, sCout, sS, ssel,sofw);

    u_tb : process
    begin


        
        sA   <= "00000000";
        sB   <= "11111111";
        ssel <= '0';
        wait for 10 ns;


        
        sA   <= "00000000";
        sB   <= "11111111";
        ssel <= '1';
        wait for 10 ns;


       
        sA   <= "11111111";
        sB   <= "00000001";
        ssel <= '0';
        wait for 10 ns;


        
        sA   <= "11111111";
        sB   <= "00000001";
        ssel <= '1';
        wait for 10 ns;

       
        sA   <= "11111110";
        sB   <= "11111110";
        ssel <= '0';
        wait for 10 ns;

       
        sA   <= "11111111";
        sB   <= "11111111";
        ssel <= '0';
        wait for 10 ns;

        
        sA   <= "01111111";
        sB   <= "00000001";
        ssel <= '0';
        wait for 10 ns;
        
        sA   <= x"3F";
        sB   <= x"7F";
        ssel <= '0';
        wait for 10 ns;

        wait;
    end process;
    

end architecture;
