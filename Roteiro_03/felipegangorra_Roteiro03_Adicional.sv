// Felipe da Silva Gangorra - 121111084 - UFCG

/*
 Construir um circuito comparador de 2 números de 8 bits, A e B, cuja saída (S) 
 será igual a 1 se A igual a B e 0, caso cont
*/

parameter N = 8;

module comparador(input logic [N-1:0]A,B, output logic S);
  always_comb begin 
    S <= &(~(A ^ B));
  end
endmodule