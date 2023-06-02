// Felipe da Silva Gangorra - 121111084 - UFCG

/*
Problema 4 – Detector de Sequência

Construir o circuito descrito a seguir. Em uma fileira de 3 lâmpadas, as lâmpadas só 
acendem uma de cada vez. Se as lâmpadas acenderem na sequência 1–2–3, deve-se soar um 
alarme. Se a condição 1-2-3 não for observada, despreza-se até a lâmpada 1 acender 
novamente (Exemplo de sequência: 1 2 2 1 3 2 1 2 3 1 2 2 2 3 3).
*/


module Detector_de_Sequencia (
  input logic clk, 
  input logic reset,
  input logic [2:0] lamps,
  output logic alarme
);
  
  enum logic [2:0] {reseted, lamp1, lamp2, lamp3} state; //estados possíveis
  logic alarmou;
  
  always_ff @(posedge clk) begin
    if (reset) begin
      alarmou <= 0;			// reinicia o sinal de alarme
      state <= reseted;		// reinicia o estado para reseted
      end 
    else
      
    unique case (state)
      reseted:
        if (lamps == 3'b001)		//estado lamp1 se sequencia correta - lamp1
          state <= lamp1;
      else 
        state <= reseted;
      
      lamp1:
      if (lamps == 3'b010)		//sequencia correta - lamp1
          state <= lamp2;
      else 
        state <= reseted;
      
      lamp2:
      if (lamps == 3'b100) begin		//sequencia correta - lamp2
          state <= lamp3;
          alarmou <= 1;				//ativa alarme
          end 
      else 
        state <= reseted;
      
      lamp3:
      if (alarmou == 1) begin		//sequencia correta - lamp3
          state <= reseted;
          alarmou <= 0;				//desativa alarme
          end 
      else 
        state <= reseted;
    endcase
  end
  	always_comb alarme <= alarmou;	//atribui sinal de alarme para sinal de saida
endmodule