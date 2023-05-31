// Felipe da Silva Gangorra - 121111084 - UFCG

/*
Problema 3 – Detector de Paridade Par
Construir uma máquina de estados de um detector de paridade de um sinal serial. 
Considere paridade par, conforme informações a seguir.

Entradas e Saídas:

clk.
reset.
Entrada serial.
Saída (Saída = 1, se for detectado erro e Saída = 0, caso contrário)

*/

module detector_de_paridade (
  input clk,
  input reset,
  input in_bit,
  output out_bit
);

  logic state;

  always_ff @(posedge clk) begin
    if (reset)
      state <= 1'b1;
    else begin
      if (state == 1'b1 && in_bit == 1'b1)
        state <= 1'b0;
      else if (state == 1'b0 && in_bit == 1'b1)
        state <= 1'b1;
    end
  end

  always_comb out_bit = state;

endmodule
