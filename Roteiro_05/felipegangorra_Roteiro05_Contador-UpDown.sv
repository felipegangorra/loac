// Felipe da Silva Gangorra - 121111084 - UFCG

/*
Problema 1 – Contador Up/Down
Construir um Contador Síncrono Hexadecimal de 4 bits, o qual poderá realizar a contagem crescente ou decrescente, conforme informações a seguir.

Entradas e Saídas

clk.
reset.
Entrada de Seleção de Contagem (crescente ou decrescente).
Saída.
*/

module ContadorUpDown (
  input clk,
  input reset,
  input sel,
  output reg [3:0] output count
);

  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      count <= 4'b0000; // Valor inicial quando o reset está ativo
    end else begin
      if (sel) begin
        count <= count + 4'b0001; // Incremento quando é 1
      end else begin
        count <= count - 4'b0001; // Decremento quando é 0
      end
    end
  end

endmodule
