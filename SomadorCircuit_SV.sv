// Felipe Gangorra - UFCG - 121111084
// Código que soma dois valores, podendo ser de diferentes representações

// [N-1:0] vai de 0 até N (que é 8)
// "<=" é sinal de atribuição
// "always_comb" usado para demonstrar cir


parameter N=8;	//num de 8 bits

module Somador(input logic [N-1:0] A, B, output logic [N-1:0] Sum);
  always_comb Sum <= A+B;
endmodule