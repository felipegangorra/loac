// Felipe da Silva Gangorra - 121111084 - UFCG

/*
Problema 02 - Roteamento

b) Construir um circuito digital que faz o roteamento entre quatro informações
de 4 bits (A,  B, C e D) e transmite a informação selecionada (utilizando
a variável De seleção, SEL) para um único canal de comunicação (Saida).
*/

parameter N = 4;	//número de bits

// SEL tem dois bits para corresponder as opções (00, 01, 10, 11)

module Roteamento(input logic [N-1:0] A, B, C, D, input logic [N-1:2] SEL, output logic [N-1:0] Saida);
  always_comb begin  
    case(SEL)
      2'b00: Saida <= A;
      2'b01: Saida <= B;
      2'b10: Saida <= C;
      2'b11: Saida <= D;
    endcase
  end
endmodule