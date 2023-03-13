programa
{
	
	funcao inicio()
	{
		cadeia dados[2][3]
		para(inteiro i=0; i < 2; i++){
			para(inteiro j=0; j < 3; j++){
				se(j==0){
					escreva("Nome: ")
					leia(dados[i][j])
				} senao se (j==1) {
					escreva("Telefone: ")
					leia(dados[i][j])
				} senao {
					escreva("E-mail: ")
					leia(dados[i][j])
				}
			}
		}
		para(inteiro i=0; i < 2; i++){
			para(inteiro j=0; j < 3; j++){
				escreva(dados[i][j])
				se(j==0 ou j==1){
					escreva(" , ")
				}
			}
			escreva("\n")
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 503; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */