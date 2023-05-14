// Felipe da Silva Gangorra - 121111084 - UFCG

/*
Problema 3 – Memória RAM ROM
Construir uma Memória RAM ROM 4x4, conforme descrição a seguir.

Entradas e Saídas

Endereços: Addr[1:0] (ou Addr_1, Addr_0).
Dados de Saída: Dout[3:0] (ou Dout_3, Dout_2, Dout_1, Dout_0), que devem ser
armazenados na memória: 0100, 1100, 0110 e 0111, respectivamente, nos 
endereços 0, 1, 2 e 3, respectivamente.
*/

parameter ADDR_WIDTH = 2;
parameter DATA_WIDTH = 4;
module RAM_ROM(
  input logic [ADDR_WIDTH-1:0] addr,
  output logic [DATA_WIDTH-1:0] data_out);
  
  always_comb
    case(addr)
	  2'b00: data_out = 4'b0100;
      2'b01: data_out = 4'b1100;
      2'b10: data_out = 4'b0110;
      2'b11: data_out = 4'b0111;
    endcase
endmodule