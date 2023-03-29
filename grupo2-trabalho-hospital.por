programa
{	
	/*
     * Membros Grupo 2:
     * Adriana dos Santos Neves	
     * Fernanda Meirelles
     * Luiz Otávio Cidade
     * Rodrigo Bastos
     */
	
	inclua biblioteca Matematica --> mat
		
	inteiro quartos[20], pacInternado=0, vagas=0, pessoasConsul=0
	real totalValorCons=0.0, totalValorInternacoes=0.0
	
	funcao inicio(){
		
		inteiro opcao=0

		enquanto(opcao != 5){
			escreva("\n\n")
			escreva("    HOSPITAL - XPTO \n")			
			escreva("------------------------ \n")			
			escreva("1-Consulta Ambulatorial \n")			
			escreva("2-Internação \n")
			escreva("3-Listar Quartos \n")
			escreva("4-Faturamento \n")
			escreva("5-Sair do Programa \n")
			escreva("------------------------ \n\n")	
			escreva("Digite sua opção: ")
			leia(opcao)
			limpa()
			
			escolha(opcao){

			caso 1: consultaAmb()
			espere()
			pare
			caso 2: internacao()
			espere()
			pare
			caso 3: listarQuartos()
			espere()
			pare
			caso 4: faturamento()
			espere()
			pare
			caso 5: escreva("Programa encerrado. \n\n")
			pare
			caso contrario: escreva("Opção INVÁLIDA! Tente novamente (de 1 a 5) \n")
			espere()
			} 
		}					  
	}

	funcao consultaAmb(){
		cadeia nome, espeConsulta, telefone
		inteiro num, pacPediatria=0, pacOutras=0
		real valorConsulta=120.0, valorPediatria=150.0, totalValorOutrasEsp=0.0, totalValorPediat=0.0
		
		escreva("Quantos pacientes serão consultados? ")
		leia(num)

		para(inteiro i=0; i < num; i++){
			escreva("\nDigite os dados do paciente\n")
			escreva("Nome: ")
			leia(nome)
			escreva("Telefone: ")
			leia(telefone)
			escreva("Especialidade da consulta: ")
			leia(espeConsulta)

			se(espeConsulta == "Pediatria" ou espeConsulta == "pediatria"){
				pacPediatria++
			}
			senao {
				pacOutras++
			}
		}
		pessoasConsul = pacPediatria + pacOutras
		totalValorPediat = pacPediatria * valorPediatria
		totalValorOutrasEsp = pacOutras * valorConsulta
		totalValorCons = totalValorPediat + totalValorOutrasEsp
		
		escreva("\n Pessoas consultadas ", pessoasConsul)
		escreva("\n Total faturado das consultas ", totalValorCons)
		
	}
	
	funcao internacao(){
		inteiro quarto
		real valorInternacao=500.0

		escreva("\nQual quarto deseja utilizar? (de 1 a 20) ")
		leia(quarto)
			
		se(quarto>=1 e quarto<=20){		
			se(quartoOcupado(quarto)){  
				escreva("\nEste quarto está OCUPADO ! \n")
	
				escreva("\nQuartos disponíveis: ")
				para(inteiro i=1; i <=20; i++){
					se(quartoOcupado(i) == falso){
						escreva("{ ", i, " } ")
					}
				}
			}
			senao {                      
				quartos[quarto-1] = 1  
				escreva("\nQuarto reservado com SUCESSO ! \n")
				pacInternado++
			} 
		} 
		senao{   
			escreva("\nQuarto NÃO EXISTE! (digite quartos de 1 a 20)")
			
			escreva("\nQuartos disponíveis hoje: ")
				para(inteiro i=1; i <=20; i++){
					se(quartoOcupado(i) == falso){
						escreva("{ ", i, " } ")
					}
				}
		}
		totalValorInternacoes = pacInternado * valorInternacao
	}	

	funcao logico quartoOcupado(inteiro quarto){ 

		se (quartos[quarto-1] == 1){ 
			retorne verdadeiro
		}
		senao {
			retorne falso
		}	
	}

	funcao listarQuartos(){

		escreva("\nOs quartos serão listados abaixo: \n")
		para(inteiro i=1; i<=20; i++){  
			se(quartoOcupado(i)){
				escreva("Quarto ", i, ": OCUPADO \n")
			}
			senao {
				escreva("Quarto ", i, ": desocupado \n")
			}
		}
		vagasDisponiveis()
	}

	funcao vagasDisponiveis(){  
		para(inteiro i=1; i<=20; i++){
			se(quartoOcupado(i) == falso){
				vagas++
			}
		}
		escreva("\nVagas disponíveis: ", vagas)
	}

	funcao faturamento(){		
		real totalValorGeral = 0.0

		totalValorGeral = totalValorCons + totalValorInternacoes

		escreva("\n")
		escreva("Número de consultas realizadas: ", pessoasConsul, "\n")
		escreva("Número de internações realizadas: ", pacInternado, "\n")
		escreva("Total faturado com as consultas (pediatria e outras): ", mat.arredondar(totalValorCons, 2), "\n")
		escreva("Total faturado com as internações: ", mat.arredondar(totalValorInternacoes, 2), "\n")
		escreva("Total geral arrecadado no dia: ", mat.arredondar(totalValorGeral, 2), "\n")	
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
 * @POSICAO-CURSOR = 124; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */