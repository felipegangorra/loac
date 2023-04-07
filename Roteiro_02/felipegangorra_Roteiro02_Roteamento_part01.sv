// Felipe da Silva Gangorra - 121111084 - UFCG

/*
Problema 02 - Roteamento

a) Construir um circuito digital que faz o roteamento entre duas informações de 4 bits (A e B) 
e transmite a informação selecionada (utilizando a variável de seleção, SEL) para um único canal 
de comunicação (Saida).
*/

parameter N = 4;	// número de bits

module Roteamento(input logic [N-1:0] A, B, input logic SEL, output logic [N-1:0] Saida);
  always_comb begin 
    if(SEL == 0)
      Saida <= A;
    else
      Saida <= B;
  end
endmodule