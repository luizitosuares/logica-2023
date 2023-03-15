programa
{
    
/*Preencher uma matriz[4][2] com valores iniciais e fazer uma rotina para o usuário ler um número e exibir
    uma mensagem se este número existe na matriz, se existir pedir ao usuário para preencher com outro
    valor.*/
    
    funcao inicio()
    {
        logico achei = falso
        inteiro numero, numeros[4][2] = {{10, 20},
                                   {30, 40},
                                   {50, 60},
                                   {70, 80}}
        
        faca{
            escreva("Digite um número: ")
            leia(numero)

        
        para(inteiro linha=0; linha < 4; linha++){
            para(inteiro coluna=0; coluna < 2; coluna++){

                se (numeros[linha][coluna] == numero){
                    achei = verdadeiro
                    escreva("O número já existe!\n")
                pare}
                }
            }
        
        }enquanto(numero>0)
            
    }
}

Conversar em #grupo2

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