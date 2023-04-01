// Felipe Gangorra

 /*
Exemplo 2: Projetar o circuito lógico abaixo cuja saída será 1 quando a
tensão analógica VB for maior que 6
 */

module TensaoLogica(input logic A,B,C,D, output logic Z);
  always_comb begin
    if((A) | (B & C & D))
      Z <= 1;
    else
      Z <= 0;
  end
endmodule