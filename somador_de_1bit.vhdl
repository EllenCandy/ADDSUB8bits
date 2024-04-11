entity somador_de_1bit is
    port(

    A   : in bit;
    B   : in bit;
    Cin : in bit;
    S   : out bit;
    Cout: out bit
);
end entity;

architecture somador of somador_de_1bit is
    
begin

    S <= (A xor B) xor Cin ;
    Cout <= (A and Cin) or (B and Cin) or (A and B) ;

end architecture;

-- ghdl -a *.vhdl
