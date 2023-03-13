programa
{
	inteiro numeros[3][2], soma=0, somaLinha=0, somaColuna=0
	
	funcao inicio()
	{
		entradaDados()
		linha()
		coluna()
		totalGeral()
	}

	funcao entradaDados(){
		para(inteiro linha=0; linha < 3; linha++){
			para(inteiro coluna=0; coluna < 2; coluna++){
				escreva("Digite o nº:")
				leia(numeros[linha][coluna])
			}

		}
	}

		
	funcao linha(){
		para(inteiro linha=0; linha < 3; linha++){
			para(inteiro coluna=0; coluna < 2; coluna++){
					somaLinha +=  numeros[linha][coluna]
					soma += numeros[linha][coluna]
					
			}
			escreva("Total linha:" +linha+":", somaLinha,"\n")
			somaLinha=0	
		}
		
		}
		
		
		funcao coluna(){
			para(inteiro coluna=0; coluna < 2; coluna++){
			somaColuna=0
			para(inteiro linha=0; linha < 3; linha++){
				somaColuna += numeros[linha][coluna]
			}
			escreva("Total Coluna:" +coluna+" :",somaColuna,"\n")
		}
		
		}

		funcao totalGeral(){
			escreva("Total Geral da soma:", soma,"\n")
		}

}
		
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 954; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */