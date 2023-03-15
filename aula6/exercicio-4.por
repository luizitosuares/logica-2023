programa
{
	
	funcao inicio()
	{
		inteiro numeros[4][3], maiorValor = 0, menorValor = 9999

		para(inteiro i=0; i < 4; i++){
		para(inteiro j=0; j < 3; j++){
			escreva(" Digite o valor: ")
			leia (numeros[i][j])
		}
}

		para(inteiro i=0; i < 4; i++){
		para(inteiro j=0; j < 3; j++){

		se (numeros[i][j] > maiorValor){
		maiorValor = numeros[i][j]
		}

		se(numeros[i][j] < menorValor){
			menorValor = numeros[i][j]
		
		}
		
		
		}	
		}
		escreva(" O maior valor é:", maiorValor)
		escreva(" O menor valor é:", menorValor)

}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 539; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numeros, 6, 10, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */