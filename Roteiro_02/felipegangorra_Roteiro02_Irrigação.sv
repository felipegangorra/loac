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

module irrigacao(input logic [N-1:0] U, output logic [N-1:0] S, output logic A,B,C,D,E,F,G);
  always_comb begin
    S <= U;	// Saida esperada
    
    // Extra: mapeando o resultado dos 7 segmentos esperados (a,b,c,d,e,f,g)
    case (U)
      2'b00: begin A <= 0; B <= 0; C <= 0; D <= 0; E <= 0; F <= 0; G <= 0; end	//apagado
      2'b01: begin A <= 1; B <= 1; C <= 1; D <= 1; E <= 1; F <= 1; G <= 0; end	//zero
      2'b10: begin A <= 0; B <= 1; C <= 1; D <= 0; E <= 0; F <= 0; G <= 0; end	//um
      2'b11: begin A <= 1; B <= 1; C <= 0; D <= 1; E <= 1; F <= 0; G <= 1; end	//dois
    endcase
    
  end
endmodule