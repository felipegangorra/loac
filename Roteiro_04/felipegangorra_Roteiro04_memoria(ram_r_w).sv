// Felipe da Silva Gangorra - 121111084 - UFCG

/*
Problema 2 – Memória RAM R/W
Construir uma Memória RAM R/W 4x4, conforme descrição a seguir.

Entradas e Saídas

clk.
reset.
Entrada de seleção (leitura, “R” ou escrita, “W”): SEL = 0 ("R") e SEL = 1 ("W").
Dados de Entrada ("W"): Din[3:0] (ou Din_3, Din_2, Din_1, Din_0).
Endereços: Addr[1:0] (ou Addr_1, Addr_0).
Dados de Saída ("R"): Dout[3:0] (ou Dout_3, Dout_2, Dout_1, Dout_0).
*/

module ram_rw(
  input logic clk, reset,
  input logic SEL,
  input logic [1:0] Addr,
  input logic [3:0] Din,
  output logic [3:0] Dout
);

  logic [3:0] mem [0:3];

  always_ff @(posedge clk or posedge reset) begin
    if (reset)
      mem <= 0;
    else if (SEL) // escrita
      mem[Addr] <= Din;
    else // leitura
      Dout <= mem[Addr];
  end
endmodule