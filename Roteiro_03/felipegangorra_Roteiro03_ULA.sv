// Felipe da Silva Gangorra - 121111084 - UFCG

/*
Construir uma ULA com as operações AND (00), OR (01), SOMA (10) e SUBTRAÇÃO (11).

-> Entradas 'A' e 'B' são os valores para escolher a operação.
-> Entrada "vetor" será o parametro para escolher o tipo de operação.
-> Saida S será o resultado da operação
-> Saida FLAG_O indica se a ocorrência de overflow ou underflow.
*/

parameter N = 8;

module ula(input logic signed [N-1:0]A, B, input logic [1:0]vetor,
           output logic signed [N-1:0]S, output logic FLAG_O);
  
  always_comb begin 
   	FLAG_O <= 0;		//valor base
    case(vetor)
      2'b00: begin S <= A & B; end		//operação and da ula      
      2'b01: begin S <= A || B; end		//operação or da ula     
      2'b10: begin	//operação de soma da ula
        S <= A + B;
        if (A < 0 && B < 0 && S >= 0) begin		//verifica se a saida de dois negativos é positivo (underflow)
          FLAG_O <= 1;
        end
        else if (A >= 0 && B >= 0 && S < 0) begin	//verifica se a saida de dois positivos é negativo (overflow)
          FLAG_O <= 1;
        end
      end
      2'b11: begin 	//operação de subtração
        S <= A - B;
        if (A >= 0 && B < 0 && S < 0) begin		//verifica se a saida de um positivo e um negativo é negativo (overflow)
          FLAG_O <= 1;
        end
        else if (A < 0 && B >= 0 && S >= 0) begin	//verifica se a saida de um negativo e um positivo é positivo (underflow)
          FLAG_O <= 1;
        end
      end
    endcase
  end
endmodule