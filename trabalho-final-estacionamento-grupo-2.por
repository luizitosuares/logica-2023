programa
{	/*
     * Membros Grupo 2:
     * Adriana dos Santos Neves
     * Fernanda Meirelles
     * Luiz Otávio Cidade
     * Rodrigo Bastos
     */
	
		inteiro vagas[30]
	funcao inicio(){
		cadeia placa = ""
		inteiro opcao=0
		
		enquanto(opcao != 4){
			escreva("\n\n")			
			escreva("------------------------ \n")			
			escreva("1 - Entrada de veículo \n")			
			escreva("2 - Saída de veículo \n")
			escreva("3 - Listar Vagas \n")
			escreva("4 - Sair do programa \n")
			escreva("------------------------ \n")
			leia(opcao)
			limpa()
			
			escolha(opcao){

			caso 1: entradaVeiculos(placa)
			espere()
			pare
			caso 2: saidaVeiculos()
			espere()
			limpa()
			pare
			caso 3: listarVagas(placa)
			espere()
			limpa()
			pare
			caso 4: escreva("Programa encerrado. \n\n")
			pare
			caso contrario: escreva("Opção INVÁLIDA! Tente novamente (de 1 a 4) \n")
			espere()
			} 
		}
	}

	funcao entradaVeiculos(cadeia &placa){
		inteiro vaga
				
		escreva("\nQual vaga deseja utilizar? (de 1 a 30) ")
		leia(vaga)		
			
		se(vaga>=1 e vaga<=30){		
			se(vagaOcupada(vaga)){  
				escreva("\nVaga OCUPADA! \n")
	
				escreva("\nVagas disponíveis agora: \n")
				escreva("\nVagas disponíveis: \n")
				para(inteiro i=1; i <=30; i++){
					se(vagaOcupada(i) == falso){
						escreva("{ ", i, " } ")
						se(i == 10){
							escreva("\n")
						}
						se (i == 20){
							escreva("\n")
						}						
				}
			}
		}
			
			senao {                      
				vagas[vaga-1] = 1
				escreva("Digite a placa do veículo:")
				leia(placa)  
				escreva("\nVaga reservada com SUCESSO!")
			}
		} 
		senao{   
			escreva("\nVaga NÃO EXISTE! (digite a vaga de 1 a 30)\n")
			
			escreva("\nVagas disponíveis: \n")
				para(inteiro i=1; i <=30; i++){
					se(vagaOcupada(i) == falso){
						escreva("{ ", i, " } ")
						se(i == 10){
							escreva("\n")
						}
						se (i == 20){
							escreva("\n")
						}						
				}
			}
		}
	}
	
	funcao logico vagaOcupada(inteiro vaga){ 

		se (vagas[vaga-1] == 1){ 
			retorne verdadeiro
		}
		senao {
			retorne falso
		}	
	}

	funcao saidaVeiculos(){
		
		inteiro vaga
		
		escreva("\nQual vaga deseja retirar? (de 1 a 30) ")
		leia(vaga)
			
		se(vaga>=1 e vaga<=30){		
			se(vagaOcupada(vaga)){  
				vagas[vaga-1] = 0
				escreva("\nVaga liberada! \n")
			}
			senao{
				escreva("Não existe carro na vaga informada")
			}
			
		} 
		senao{   			
			escreva("\nVaga NÃO EXISTE! (digite de 1 a 30) ")
			
			escreva("\nVagas disponíveis: \n")
				para(inteiro i=1; i <=30; i++){
					se(vagaOcupada(i) == falso){
						escreva("{ ", i, " } ")
						se(i == 10){
							escreva("\n")
						}
						se (i == 20){
							escreva("\n")
						}						
				}
			}
		}	
	}

	funcao listarVagas(cadeia placa){
		escreva("\nVagas disponíveis abaixo: \n")
		para(inteiro i=1; i<=30; i++){  
			se(vagaOcupada(i)){
				escreva("A vaga ", i, " está ocupada pela placa: ", placa, "\n")
			}
			senao {
				escreva("A vaga ", i, " está livre \n")
			}
		}
	}
	
	funcao espere(){		
		cadeia _
		
		escreva("\n\nPressione ENTER para voltar ao menu...")
		leia(_)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2311; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */