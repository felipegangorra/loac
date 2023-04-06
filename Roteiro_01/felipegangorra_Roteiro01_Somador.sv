// Felipe da Silva Gangorra - UFCG - 121111084

/*
Questão: Somador de 8 bits
Construir um sistema digital realiza operações de soma de dois números inteiros 
de 8 bits, utilizando Complemento de 2.  O circuito deverá receber como entradas,
A e B e deverá fornecer as seguintes saídas:

a) S (Soma, 8 bits) - saída (resultado soma);
b) Z (zero, 1 bit) - status (0 - resultado da soma é diferente de zero | 1 - resultado da soma é igual a zero).
c) N (Negativo, 1 bit) - status (0 - resultado da soma é positivo | 1 - resultado da soma é negativo).
d) P (Par, 1 bit) - status (0 - resultado da soma é ímpar | 1 - resultado da soma é par).
*/


parameter T = 8;	//tamanho de bits
module Somador(input logic signed [T-1:0]A, B, output logic signed [T-1:0]S, output logic Z, N, P);
  always_comb begin
    //verificando Soma
    S <= A + B;
    
    //verificando Zero ou não
    Z <= (S == 0) ? 1 : 0;
    
    //verificando Negativo
    N <= (S[T-1] == 1) ? 1 : 0; //bit mais significativo para saber o sinal

    //verificando ímpar/par
    P <= (S[0] == 0) ? 1 : 0; //bit menos significativo para saber par/ímpar
  end
endmodule