entity mux2x8 is
    port(
        c0  : in  bit_vector(7 downto 0);
        c1 : IN bit_vector(7 downto 0);        
        OP  : in  bit;
        S  : out bit_vector(7 downto 0)
    );
end entity;
 
architecture comuta of mux2x8 is
begin

    S <= c0 when OP = '0' else c1;
 
end architecture;
