programa

//2)Criar um algoritmo que leia em um vetor o nome, a quantidade 
//e o valor de uma lista de três produtos.  
//Ao final deverá calcular o subtotal de cada produto 
//e no final exibir o total geral da compra



{
	
	funcao inicio()
	{
		real valor[3], quantidade[3], subtotal[3], total = 0 
		cadeia produtos[3]
		para(inteiro i=0; i < 3; i++){
		escreva("Qual o nome do produto ?") 
		leia(produtos[i])

		escreva("Qual a quantidade do produto ?")
		leia(quantidade[i])

		escreva("Qual o valor do produto ?")
		leia(valor[i])
}
	
		para(inteiro i=0; i < 3; i++){
		subtotal[i] = quantidade[i]* valor[i]
		total += subtotal[i]
}
		para(inteiro i=0; i < 3; i++){
			escreva("O subtotal é:", subtotal[i])
			}
			escreva("O total é:", total)
}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 307; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */