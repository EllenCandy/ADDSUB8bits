entity porta_nao is
 
port(
 
	A : in bit_vector (7 downto 0);
	B : out bit_vector (7 downto 0)

 
);
end entity;
 
architecture fabio of porta_nao is
 
begin
 
	B <= not A ;
 
end architecture;
