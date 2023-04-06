// Felipe da Silva Gangorra - UFCG - 121111084

/*
Este é um circuito que tem como objetivo verificar se o elevador 
está parado (M=0) e em algum andar do prédio (A1, A2, A3 = 1). 
A porta do elevador só será aberta (P=1) se exatamente um dos andares 
estiver em nível lógico 1 e a condição de M=0 também for atendida.
*/

module Elevador(input logic M, A1, A2, A3, output logic P);
    always_comb begin 
      P <= ~M & (A1 | A2 | A3);
  end
endmodule