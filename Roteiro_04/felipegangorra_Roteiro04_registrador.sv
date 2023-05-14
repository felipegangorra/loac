// Felipe da Silva Gangorra - 121111084 - UFCG

/*
Problema 1 – Registrador Paralelo/Serial
Construir um Registrador de 4 bits, que poderá realizar o armazenamento de forma paralela
ou serial, conforme descrição a seguir.

Entradas e Saídas

clk.
reset.
Dado de Entrada Serial: Din_serie.
Entrada de seleção (armazenamento paralelo ou serial): SEL =0 (paralelo) e SEL =1 (serial).
Dado de Entrada Paralela: Din[3:0] (ou Din_3, Din_2, Din_1, Din_0).
Dado da Saída Paralela: Dout[3:0] (ou Dout_3, Dout_2, Dout_1, Dout_0).
*/


module registrador (
  input logic clk, reset, Din_serie, SEL,
  input logic [3:0] Din,
  output logic [3:0] Dout
);

  logic [3:0] registrador;

  always_ff @(posedge clk) begin
    if (reset)
      registrador <= 4'b0;
    else if (SEL) // serial
      registrador <= {registrador[2:0], Din_serie};
    else // paralelo
      registrador <= Din;
  end

  assign Dout = registrador;

endmodule
