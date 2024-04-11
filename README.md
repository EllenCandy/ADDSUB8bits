<h1 align="center"> Somador e Subtrator de 8 bits </h1>v

Este foi um trabalho feito no primeiro ano de Ciência da computação

> Problema:
 Construir um circuito combinacional que opere adição ou subtração entre duas
palavras de 8 bits cada, onde a escolha da operação é feita por um sinal de operação
op ‘1’ ou ‘0’.
 O circuito deve conter um sinal de Carry-out, e um sinal de overflow.
 
> Estrutura:
- Somador de 1 bit
Primeiramente, foi construído um fadder de 1 bit que soma o bit A com o bit B.

- Somador de 8 bits
Em seguida, para construir o fadder de 8 bits, foi replicado em 8 vezes o fadder de 1
bit e ligados entre si pela carry in/out.

- Multiplexador 2x8
O Multiplexador foi colocado para executar a escolha entre adição e subtração,
quando o sinal de operação for ’0’ significa adição, quando for ‘1’ significa subtração.

- Porta NOT
Para operar a subtração, foi feito um componente que nega a entrada B permitindo
trabalhar com complemento de 2.

- Overflow
O overflow denota um erro, quando o sistema opera uma tarefa maior que ele é capaz
de executar.

- Somador e Subtrator (projeto final)
No Somador/subtrator de 8 bits, foram adicionados todos os componentes (Somador
de 8 bits, multiplexador 2x8, porta NOT e overflow). O somador funciona somando A e
B quando o sel é ‘0’ e o subtrator soma A e B por complemento de 2 somado a 1
quando o sel é ‘1’.
