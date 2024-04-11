entity overflow is
    port(

        A     : in bit;
        B     : in bit;
        R     : in bit;
        overf : out bit

    );
end entity;

architecture seila of overflow is
begin

    overf <= ((not A) and (not B) and R) or (A and B and (not R));

end architecture;

