// Felipe da Silva Gangorra - 121111084 - UFCG

/*
Construir um contador síncrono que realiza a contagem apresentada no diagrama de estados abaixo (valores exibidos em decimal), conforme descrição a seguir.

        contador: "1->2->4->8 (volta pro 1)"

Entradas e Saídas

clk.
reset.
Entrada paralela.
Saída.

*/

module Contador_Seq_Qualquer (
  input logic clk,
  input logic reset,
  input logic [3:0] entrada_paralela,
  output logic [3:0] saida
);

  logic [3:0] contador_atual;

  //se a entrada paralela for 0 ele inicia a contagem do enunciado!
  always_ff @(posedge clk or posedge reset) begin
    if (reset)
      contador_atual <= 4'b0001;
    else if (entrada_paralela !== 4'b0000)
      contador_atual <= entrada_paralela;
    else if (contador_atual == 4'b1000)
      contador_atual <= 4'b0001;
    else
      contador_atual <= contador_atual << 1;
  end

  assign saida = contador_atual;

endmodule
