entity tb_somador_de_8bits is

end entity;
 
architecture converte of tb_somador_de_8bits is
    component somador_de_8bits is

    port(
    A    : in bit_vector(7 downto 0);
    B    : in bit_vector(7 downto 0);
    Cin  : in bit;
    Cout : out bit;    
    S    : out bit_vector(7 downto 0)
);
 
end component;
 
signal  sA,sB,sS : bit_vector (7 downto 0);
signal sCin,sCout : bit ;
 
begin
 
lais : somador_de_8bits port map (sA,sB,sCin,sCout,sS);
   u_tb : process
 
   begin
 
        sA <= "10100101";
        sB <= "00101001";
        sCIN <= '0';
        wait for 20 ns;
 
        wait;
 
    end process;
end architecture;
