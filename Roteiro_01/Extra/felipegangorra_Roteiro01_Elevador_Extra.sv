// Felipe da Silva Gangorra - UFCG - 121111084

/*
Este é um circuito que tem como objetivo verificar se o elevador 
está parado (M=0) e em algum andar do prédio (A1, A2, A3 = 1). 
A porta do elevador só será aberta (P=1) se exatamente um dos andares 
estiver em nível lógico 1 e a condição de M=0 também for atendida.
*/


// como as variáveis são binárias, vou usar só um bit
// não preciso de parameter pois 1 bit é padrão


module Elevador(input bit M, A1, A2, A3, output bit P);
  
  always_comb begin
    
    if(M == 0) begin
      if(A1 == 1 && A2 == 0 && A3 == 0) begin
        P <= 1;
      end
      else if(A1 == 0 && A2 == 1 && A3 == 0) begin
        P <= 1;
      end
      else if(A1 == 0 && A2 == 0 && A3 == 1) begin
        P <= 1;
      end
      // caso nenhum for igual a 1 iria da erro 
      else begin
        P <= 0;
      end
    end
    
  	// se M não for 0
    else begin
      P <= 0;
    end
    
  end
  
endmodule