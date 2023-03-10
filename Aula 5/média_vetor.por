programa {
  funcao inicio() 
  {
      real notas[4], media, maiorNota=0.0, menorNota=999.0, soma = 0.0

      para(inteiro i=0; i < 4; i++ ){
          faca{
            escreva("digite a nota ",i+1, ":")
            leia(notas[i])

          }enquanto(notas[i] <0 ou notas[i] >10)
        
        se (notas[i] > maiorNota){
          maiorNota = notas[i]
        }
        se (notas[i] < menorNota){
          menorNota = notas[i]
        }
        soma += notas[i]
      }
      
      media = soma/4
      escreva("maior nota: ", maiorNota, "\nmenor nota: ", menorNota, "\nmédia: ", media)
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 601; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */