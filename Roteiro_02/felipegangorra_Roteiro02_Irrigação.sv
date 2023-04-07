// Felipe da Silva Gangorra - 121111084 - UFCG

/*
Problema 01 - Irrigação

Construir um circuito para controlar um sistema de irrigação automático. 
O sistema possui dois sensores de umidade (U[1:0]), que avaliam a umidade do solo
em duas áreas diferentes da área a ser irrigada e enviam sinais para o circuito, 
conforme a tabela a seguir.

     00	Áreas 1 e 0 com umidade adequada.
     01	Área 1 com umidade adequada e Área 0 com baixa umidade.
     10	Área 1 com baixa umidade e Área 0 com umidade adequada
     11	Áreas 1 e 0 com baixa umidade.
*/

parameter N = 2; //variavel com dois bits

module irrigacao(input logic [N-1:0] U, output logic [N-1:0] S);
  always_comb begin
 	S <= U;
  end
endmodule