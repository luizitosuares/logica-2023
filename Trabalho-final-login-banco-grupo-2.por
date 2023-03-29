programa
{	/*
     * Membros Grupo 2:
     * Adriana dos Santos Neves
     * Fernanda Meirelles
     * Luiz Otávio Cidade
     * Rodrigo Bastos
     */
     
	inclua biblioteca Util

		real saldoTotal=0.0
	funcao inicio(){
		cadeia matriz[4][2] = {{"Rodrigo","123"},{"Adriana","123"},{"Fernanda","123"},{"Luiz","123"}}
		cadeia usuario, senha
		logico usuarioLiberado = falso
		inteiro opcao=0

		escreva("Banco Serratec Lógica 2023 \n")
		escreva("-------------------------- \n")
		escreva("[ Digite seu usuário ]: ")
		leia(usuario)
		escreva("[ Digite sua senha ]: ")
		leia(senha)
		escreva("-------------------------- \n")

	 	usuarioLiberado = validarUsuario(usuario, senha, matriz)

	 	se(usuarioLiberado){
            escreva("Bem vindo ao sistema!")
            Util.aguarde(1500)
            limpa()

			enquanto(opcao != 4){
				escreva("\n\n")
				escreva("--------------\n")
				escreva("1 - Depositar \n")
				escreva("2 - Sacar \n")
				escreva("3 - Saldo \n")
				escreva("4 - Sair \n")
				escreva("--------------\n")
				escreva("Digite sua opção: ")
				leia(opcao)
				limpa()
				
				escolha(opcao){
	
				caso 1: depositar()
				espere()
				pare
				caso 2: sacar()
				espere()
				pare
				caso 3: saldo()
				espere()
				pare
				caso 4: escreva("Programa encerrado. \n\n")
				pare
				caso contrario: escreva("Opção INVÁLIDA! Tente novamente (de 1 a 4) \n")
				espere()
				} 
			}					
		 }
		 senao{
		 	escreva("Acesso negado!")
        	}
	}

	funcao logico validarUsuario(cadeia usuario, cadeia senha, cadeia matriz[][]){
     	para(inteiro i = 0; i < 4; i++){            
			se(matriz[i][0] == usuario e matriz[i][1] == senha)            
				retorne verdadeiro
		}
		retorne falso
	}

	funcao depositar(){
		real deposito
		
		escreva("Quanto deseja depositar? ")
		leia(deposito)
		escreva("Depósito realizado com sucesso \n")		
		
		saldoTotal += deposito
		escreva("Saldo disponível na conta: ", saldoTotal)
	}

	funcao sacar(){
		real saque
		
		escreva("Quanto deseja sacar da conta? ")
		leia(saque)

		se(saque <= saldoTotal){
			escreva("Saque realizado com sucesso!!\n")
			saldoTotal -= saque
		}
		senao{
			escreva("Saque não pode ser realizado, sem saldo suficiente\n")
		}
	}

	funcao saldo(){
		escreva("O saldo da conta é: ", saldoTotal)		
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
 * @POSICAO-CURSOR = 2115; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */