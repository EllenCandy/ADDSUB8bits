entity bloco_grande is
    port(

        A    : in bit_vector(7 downto 0);
        B    : in bit_vector(7 downto 0);
        Cin  : in bit;
        Cout : out bit;
        S    : out bit_vector(7 downto 0);
        sel  : in bit;
        ofw  : out bit

    );
end entity;

-- COMPONENT: ADDER8BITS, MUX2X8, OVERFLOW, NOT

architecture addsub of bloco_grande is

    component somador_de_8bits is
    
    port(

        A    : in bit_vector(7 downto 0);
        B    : in bit_vector(7 downto 0);
        Cin  : in bit;
        Cout : out bit;    
        S    : out bit_vector(7 downto 0)
);

end component;  

    component mux2x8 is
    port(
        c0 :in  bit_vector(7 downto 0);
        c1 :in bit_vector(7 downto 0);        
        OP  :in  bit;
        S  :out bit_vector(7 downto 0)
    );
end component;

    component overflow is

    port(

        A     : in bit;
        B     : in bit;
        R     : in bit;
        overf : out bit

    );  

end component;

    component porta_nao is

    port(
 
	    A : in bit_vector (7 downto 0);
	    B : out bit_vector (7 downto 0)

    );

end component;
-- ACABOU OS COMPONENT

signal mux2sum, not2mux, s2ov : bit_vector (7 downto 0);

begin

   adds0 : somador_de_8bits port map (A, mux2sum, sel, Cout, s2ov);
   mux0  : mux2x8           port map (B, not2mux, sel, mux2sum);
   over0 : overflow         port map (A(7), mux2sum(7), s2ov(7), ofw);
   nao0  : porta_nao        port map (B, not2mux);
   S <= s2ov;
end architecture;

