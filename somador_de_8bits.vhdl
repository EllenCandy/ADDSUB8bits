entity somador_de_8bits is

    port(
    A    : in bit_vector(7 downto 0);
    B    : in bit_vector(7 downto 0);
    Cin  : in bit;
    Cout : out bit;    
    S    : out bit_vector(7 downto 0)
);
end entity;
 
architecture converte of somador_de_8bits is
    component somador_de_1bit is

    port(
    A    : in bit;
    B    : in bit;
    Cin  : in bit;
    Cout : out bit;    
    S    : out bit
);

end component;

signal paulo : bit_vector (6 downto 0);

begin 

    ader0 :  somador_de_1bit port map (A(0),B(0), Cin,paulo(0),S(0));
    ader1 :  somador_de_1bit port map (A(1),B(1),paulo(0),paulo(1),S(1));
    ader2 :  somador_de_1bit port map (A(2),B(2),paulo(1),paulo(2),S(2));
    ader3 :  somador_de_1bit port map (A(3),B(3),paulo(2),paulo(3),S(3));
    ader4 :  somador_de_1bit port map (A(4),B(4),paulo(3),paulo(4),S(4));
    ader5 :  somador_de_1bit port map (A(5),B(5),paulo(4),paulo(5),S(5));
    ader6 :  somador_de_1bit port map (A(6),B(6),paulo(5),paulo(6),S(6));
    ader7 :  somador_de_1bit port map (A(7),B(7),paulo(6),Cout,S(7));

end architecture;
