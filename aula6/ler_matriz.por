programa
{
	
	funcao inicio()
	{		
		
		inteiro numero[4][2], somaLinha = 0, somaCol = 0, soma = 0  

		
		para(inteiro linha=0; linha < 4; linha++){
			somaLinha = 0
			para(inteiro coluna=0; coluna < 2; coluna++){
				escreva(" \n Digite valores para linha e coluna: ")
				leia(numero[linha][coluna])
				somaLinha += numero[linha][coluna]
				soma += numero[linha][coluna]
		}
		 escreva(" \n A somaa da linha é: " , +linha+ " é ", somaLinha, "\n")
	
	}

	para(inteiro coluna=0; coluna < 2; coluna++){
		somaCol = 0
		
	para(inteiro linha=0; linha < 4;linha++){
		somaCol += numero[linha][coluna]
	}
	 escreva(" A soma da coluna",+coluna+ " é  ", somaCol, "\n")
		
	}	

		escreva(" A soma total é: ", soma)
	}
}	
	
	
	


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 233; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numero, 7, 10, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */