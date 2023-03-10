 programa
{
    inclua biblioteca Matematica --> mat    
    
    funcao inicio()
    {
        inteiro voto=1, candX=0, candY=0, branco=0, nulo=0
        real totalVotos

        faca{            
            escreva("Digite o número do seu candidato? ")
            leia(voto)

            escolha(voto){

            caso 1: candX++
            pare
            caso 2: candY++
            pare
            caso 3: branco++
            pare
            caso contrario: nulo++
            pare
             }         
                
        } enquanto(voto != 0)        
        escreva("Votação encerrada \n")
        
        totalVotos = (candX + candY + branco + nulo)

        se(totalVotos > 0){
            escreva("Total votos: ", totalVotos, "\n")
            escreva("Votos candidato X: ", mat.arredondar((candX/totalVotos) * 100, 2), "\n")
            escreva("Votos candidato Y: ", mat.arredondar((candY/totalVotos) * 100, 2), "\n")
            escreva("Votos branco: ", mat.arredondar((branco/totalVotos) * 100, 2), "\n")
            escreva("Votos nulos: ", nulo)
        }
    }
}
 
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1101; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */