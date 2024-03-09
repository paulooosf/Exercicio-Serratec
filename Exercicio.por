programa
{
	
	funcao inicio()
	{
		inteiro n
		cadeia nomeAlunoMaiorNota = "", nomeAlunoMenorNota = "", nomeAlunoMaiorMedia = "", nomeAlunoMenorMedia = ""
		// Iniciando variaveis com valores máximos e mínimos para definir parâmetros posteriormente
		real maiorNota = -1.0, menorNota = 11.0, maiorMedia = -1.0, menorMedia = 11.0, mediaTurma = 0.0
		
		escreva ("Quantos alunos você deseja informar as notas?\n")
		leia (n)

		// Implementando laço de repetição de acordo com o numero informado
		para (inteiro i = 0; i < n ; i++) {
			cadeia nomeTemporario
			real media = 0.0
			// Solicitando e armazenando nome do aluno
			escreva ("Qual o nome do ", i + 1, "° aluno?\n")
				leia (nomeTemporario)
			// Implementando laço de repetição para ler as 3 notas
			para (inteiro j = 0; j < 3; j++) {
				// Declarando variáveis temporárias
				real nota
				// Coletando notas e adicionando a soma da média temporaria
				escreva ("Qual a ", j + 1, "° nota?\n")
				leia (nota)
				media += nota
				// Coletando dados de maior e menor nota
				se (nota > maiorNota) {
					maiorNota = nota
					nomeAlunoMaiorNota = nomeTemporario
				} 
				se (nota < menorNota) {
					menorNota = nota
					nomeAlunoMenorNota = nomeTemporario
				}
			}

			// Calculando média temporária do aluno
			media = media / 3

			// Coletando dados de maior e menor media 
			se (media > maiorMedia) {
				maiorMedia = media
				nomeAlunoMaiorMedia = nomeTemporario
			}
			se (media < menorMedia) {
				menorMedia = media
				nomeAlunoMenorMedia = nomeTemporario
			}
			
			// Retornando média temporária
			escreva ("Média do aluno ", nomeTemporario, ": ", media, " pontos!\n")

			mediaTurma += media
		}
		mediaTurma = mediaTurma / n
		// Retornando dados
		escreva ("A média da turma foi de ", mediaTurma, " pontos!\n")
		
		escreva ("A maior nota foi a de ", nomeAlunoMaiorNota, ", com ", maiorNota, " pontos!\n")
		escreva ("A menor nota foi a de ", nomeAlunoMenorNota, ", com ", menorNota, " pontos!\n")

		escreva ("A maior média foi a de ", nomeAlunoMaiorMedia, ", com ", maiorMedia, " pontos!\n")
		escreva ("A menor média foi a de ", nomeAlunoMenorMedia, ", com ", menorMedia, " pontos!\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1307; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {nomeAlunoMenorMedia, 7, 85, 19}-{menorMedia, 9, 62, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */