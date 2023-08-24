/**************************************************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                         			     */ 
/*                                   			                                                                             */
/*  Coordena��o-Geral do Sistema Nacional de Avalia��o da Educa��o B�sica              		     */
/*-------------------------------------------------------------------------------------					     */
/*  PROGRAMA:                                                                                         			     */
/*               INPUT_SPSS_MICRODADOS_ENCCEJA_2019_REGULAR_NACIONAL	                            	     */
/*-------------------------------------------------------------------------------------					     */
/* DESCRICAO: PROGRAMA PARA LEITURA DOS MICRODADOS DO ENCCEJA 2019- REGULAR NACIONAL    */
/* COM DADOS DE CADASTRO, RESPOSTAS E QUESTION�RIO SOCIOECON�MICO		     */
/*		 							     */
/**************************************************************************************************************************************/
/**************************************************************************************************************************************/ 
/* Obs:                                                                                				     */
/* 		                                                                               			     */
/* Para abrir os microdados, � necess�rio salvar este programa e o				     */
/*arquivo "MICRODADOS_ENCCEJA_NACIONAL_REGULAR_2019.csv" do ENCCEJA no diret�rio C:\ do computador*/
/*							                                         */ 
/* Ao terminar esses procedimentos, execute o programa salvo utilizando                                                             */
/* as vari�veis de interesse.                                                                                                                               */
/************************************************************************************************************************************ */
/*                                  ATEN��O                                                                                                                   */ 
/**************************************************************************************************************************************/
/* Este programa abre a base de dados com os r�tulos das vari�veis de	               			     */
/* acordo com o dicion�rio de dados que comp�e os microdados. Para abrir                                                          */
/* os dados sem os r�tulos, basta importar diretamente no SPSS.                                                                        */
/* 							                                         */                                                           
/* Os R�tulos de algumas vari�veis n�o est�o completos em virtude do tamanho           		     */
/* das op��es quest�es. Tais enunciados foram resumidos e indicados com o      		                       */
/* seguinte c�digo: "(Cf. Dic.)". Essas quest�es exigem consulta ao Dicion�rio de      			     */
/* Vari�veis para conhecer o enunciado completo.                                       			     */
/* 							                                         */                                                            
/**************************************************************************************************************************************/

 
GET DATA 
  /TYPE=TXT 
  /FILE="C:\MICRODADOS_ENCCEJA_NACIONAL_REGULAR_2019.csv" 
  /DELCASE=LINE 
  /DELIMITERS=","
  /QUALIFIER='"'
  /ARRANGEMENT=DELIMITED 
  /FIRSTCASE=2 
  /IMPORTCASE=ALL 
  /VARIABLES= 
  NU_INSCRICAO F12.0 
  NU_ANO F4.0 
  TP_CERTIFICACAO F1.0 
  TP_FAIXA_ETARIA F2.0 
  TP_SEXO A1 
  CO_UF_PROVA F2.0 
  SG_UF_PROVA A2 
  NO_ENTIDADE_CERTIFICADORA A105 
  IN_PROVA_LC F1.0 
  IN_PROVA_MT F1.0 
  IN_PROVA_CN F1.0 
  IN_PROVA_CH F1.0 
  TP_PRESENCA_LC F1.0 
  TP_PRESENCA_MT F1.0 
  TP_PRESENCA_CN F1.0 
  TP_PRESENCA_CH F1.0 
  CO_PROVA_LC F6.0 
  CO_PROVA_MT F6.0 
  CO_PROVA_CN F6.0 
  CO_PROVA_CH F6.0 
  NU_NOTA_LC F3.0 
  NU_NOTA_MT F3.0 
  NU_NOTA_CN F3.0 
  NU_NOTA_CH F3.0 
  IN_APROVADO_LC F1.0 
  IN_APROVADO_MT F1.0 
  IN_APROVADO_CN F1.0 
  IN_APROVADO_CH F1.0 
  TX_RESPOSTAS_LC A30 
  TX_RESPOSTAS_MT A30 
  TX_RESPOSTAS_CN A30 
  TX_RESPOSTAS_CH A30 
  TX_GABARITO_LC A30 
  TX_GABARITO_MT A30 
  TX_GABARITO_CN A30 
  TX_GABARITO_CH A30 
  TP_STATUS_REDACAO F1.0 
  NU_NOTA_COMP1 COMMA4.2 
  NU_NOTA_COMP2 COMMA4.2 
  NU_NOTA_COMP3 COMMA4.2 
  NU_NOTA_COMP4 COMMA4.2 
  NU_NOTA_COMP5 COMMA4.2 
  NU_NOTA_REDACAO COMMA4.2 
  Q01 A1 
  Q02 A1 
  Q03 A1 
  Q04 A1 
  Q05 A1 
  Q06 A1 
  Q07 A1 
  Q08 A1 
  Q09 A1 
  Q10 F1.0 
  Q11 F1.0 
  Q12 F1.0 
  Q13 F1.0 
  Q14 F1.0 
  Q15 A1 
  Q16 A1 
  Q17 A1 
  Q18 A1 
  Q19 A1 
  Q20 A1 
  Q21 A1 
  Q22 F1.0 
  Q23 F1.0 
  Q24 F1.0 
  Q25 F1.0 
  Q26 F1.0 
  Q27 F1.0 
  Q28 F1.0 
  Q29 F1.0 
  Q30 F1.0 
  Q31 A1 
  Q32 A1 
  Q33 A1 
  Q34 A1 
  Q35 A1 
  Q36 A1 
  Q37 A1 
  Q38 A1 
  Q39 A1 
  Q40 A1 
  Q41 F1.0 
  Q42 F1.0 
  Q43 F1.0 
  Q44 F1.0 
  Q45 F1.0 
  Q46 F1.0 
  Q47 F1.0 
  Q48 F1.0. 
CACHE. 
EXECUTE.
DATASET NAME ENCCEJA_REGULAR_NACIONAL WINDOW=FRONT.

VARIABLE LABELS NU_INSCRICAO 'Campo com m�scara no n�mero de inscri��o do candidato.'.
VARIABLE LABELS NU_ANO 'Ano do Exame Encceja que est� em an�lise.'.    
VARIABLE LABELS TP_CERTIFICACAO 'Indicador do tipo de certifica��o pedida pelo participante.'.
VALUE LABELS TP_CERTIFICACAO
1 'Ensino Fundamental'
2 'Ensino M�dio'.
VARIABLE LABELS TP_FAIXA_ETARIA 'Faixa et�ria do participante conforme idade em 31 de dezembro do ano do exame.'.   
VALUE LABELS TP_FAIXA_ETARIA
1  'Menor de 17 anos'
2   '17 anos'
3   '18 anos'
4   '19 anos'
5   '20 anos'
6   '21 anos'
7   '22 anos'
8   '23 anos'
9   '24 anos'
10 '25 anos'
11 'Entre 26 e 30 anos'
12 'Entre 31 e 35 anos'
13 'Entre 36 e 40 anos'
14 'Entre 41 e 45 anos'
15 'Entre 46 e 50 anos'
16 'Entre 51 e 55 anos'
17 'Entre 56 e 60 anos'
18 'Entre 61 e 65 anos'
19 'Entre 66 e 70 anos'
20 'Maior de 70 anos'.
VARIABLE LABELS TP_SEXO 'Sexo do participante.'.
VALUE LABELS TP_SEXO
'F'  'Feminino'
'M'  'Masculino'.
VARIABLE LABELS CO_UF_PROVA 'C�digo da Unidade da Federa��o da aplica��o da prova'.
VARIABLE LABELS SG_UF_PROVA 'Sigla da Unidade da Federa��o da aplica��o da prova'.
VARIABLE LABELS NO_ENTIDADE_CERTIFICADORA 'Nome da Unidade Participante respons�vel pela certifica��o do exame.'.
VARIABLE LABELS IN_PROVA_LC 'Indica solicita��o de inscri��o em: L�ngua Portuguesa, L�ngua Estrangeira Moderna, Artes, Ed. F�sica e Reda��o para Ensino Fundamental; ou Linguagens e C�digos e suas Tecnologias e Reda��o para Ensino M�dio.'.   
VALUE LABELS  IN_PROVA_LC
0 'N�o'
1 'Sim'.  
VARIABLE LABELS IN_PROVA_MT 'Indica solicita��o de inscri��o do participante na prova de: Matem�tica para os que solicitaram certifica��o do Ensino Fundamental; ou Matem�tica e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'.
VALUE LABELS IN_PROVA_MT
0 'N�o'
1 'Sim'.
VARIABLE LABELS IN_PROVA_CN 'Indica solicita��o de inscri��o do participante na prova de: Ci�ncias Naturais para Ensino Fundamental; ou Ci�ncias da Natureza e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'.
VALUE LABELS IN_PROVA_CN
0 'N�o'
1 'Sim'.
VARIABLE LABELS IN_PROVA_CH 'Indica solicita��o de inscri��o do participante na prova de: Hist�ria e Geografia para Ensino Fundamental; ou Ci�ncias Humanas e suas Tecnologias para os solicitaram certifica��o do Ensino M�dio.'.
VALUE LABELS IN_PROVA_CH
0 'N�o'
1 'Sim'.
VARIABLE LABELS TP_PRESENCA_LC 'Indica a presen�a do participante em: L�ngua Portuguesa, L�ngua Estrangeira Moderna, Artes, Educa��o F�sica e Reda��o para Ensino Fundamental; ou Linguagens e C�digos e suas Tecnologias e Reda��o para Ensino M�dio.'. 
VALUE LABELS TP_PRESENCA_LC
0	'Faltou � prova'
1	'Presente � prova'
2	'Eliminado na prova'
3	'Aplica��o n�o realizada'.
VARIABLE LABELS TP_PRESENCA_MT 'Indica a presen�a do participante na prova de: Matem�tica para os que solicitaram certifica��o do Ensino Fundamental; ou Matem�tica e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'.
VALUE LABELS TP_PRESENCA_MT
0	'Faltou � prova'
1	'Presente � prova'
2	'Eliminado na prova'
3	'Aplica��o n�o realizada'.
VARIABLE LABELS TP_PRESENCA_CN 'Indica a presen�a do participante na prova de: Ci�ncias Naturais para Ensino Fundamental; ou Ci�ncias da Natureza e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'.
VALUE LABELS TP_PRESENCA_CN
0	'Faltou � prova'
1	'Presente � prova'
2	'Eliminado na prova'
3	'Aplica��o n�o realizada'.
VARIABLE LABELS TP_PRESENCA_CH 'Indica a presen�a do participante na prova de: Hist�ria e Geografia para os que solicitaram certifica��o de Ensino Fundamental; ou Ci�ncias Humanas e suas Tecnologias para os solicitaram certifica��o do Ensino M�dio.'.
VALUE LABELS TP_PRESENCA_CH
0	'Faltou � prova'
1	'Presente � prova'
2	'Eliminado na prova'
3	'Aplica��o n�o realizada'.
VARIABLE LABELS CO_PROVA_LC 'C�digo da prova de: L�ngua Portuguesa, L�ngua Estrangeira Moderna, Artes, Educa��o F�sica e Reda��o para Ensino Fundamental; ou Linguagens e C�digos e suas Tecnologias e Reda��o para Ensino M�dio.'.      
VALUE LABELS CO_PROVA_LC
201903	'Cinza (Ensino Fundamental)'
201907	'Cinza - Ledor (Ensino Fundamental)'
201911	'Branca (Ensino M�dio)'
201915	'Branca - Ledor (Ensino M�dio)'.
VARIABLE LABELS CO_PROVA_MT 'C�digo da prova de: Matem�tica para os que solicitaram certifica��o do Ensino Fundamental; ou Matem�tica e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'.
VALUE LABELS CO_PROVA_MT
201902	'Amarela (Ensino Fundamental)'
201906	'Amarela - Ledor  (Ensino Fundamental)'
201910	'Amarela (Ensino M�dio)'
201914	'Amarela - Ledor (Ensino M�dio)'.
VARIABLE LABELS CO_PROVA_CN 'C�digo da prova de: Ci�ncias Naturais para os que solicitaram certifica��o do Ensino Fundamental; ou Ci�ncias da Natureza e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'.
VALUE LABELS CO_PROVA_CN
201901	'Rosa (Ensino Fundamental)'
201905	'Rosa - Ledor (Ensino Fundamental)'
201909	'Rosa (Ensino M�dio)'
201913	'Rosa - Ledor (Ensino M�dio)'.
VARIABLE LABELS CO_PROVA_CH 'C�digo da prova de: Hist�ria e Geografia para os que solicitaram certifica��o de Ensino Fundamental; ou Ci�ncias Humanas e suas Tecnologias para os solicitaram certifica��o do Ensino M�dio.'.
VALUE LABELS CO_PROVA_CH
201904	'Azul (Ensino Fundamental)'
201908	'Azul  - Ledor (Ensino Fundamental)'
201912	'Azul (Ensino M�dio)'
201916	'Azul - Ledor (Ensino M�dio)'.
VARIABLE LABELS NU_NOTA_LC 'Nota da prova de:L�ngua Portuguesa, L�ngua Estrangeira Moderna, Artes, Educa��o F�sica e Reda��o para Ensino Fundamental; ou Linguagens e C�digos e suas Tecnologias e Reda��o para Ensino M�dio.'.
VARIABLE LABELS NU_NOTA_MT 'Nota da prova de: Matem�tica para os que solicitaram certifica��o do Ensino Fundamental; ou Matem�tica e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'.
VARIABLE LABELS NU_NOTA_CN 'Nota da prova de: Ci�ncias Naturais para os que solicitaram certifica��o do Ensino Fundamental; ou Ci�ncias da Natureza e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'.     
VARIABLE LABELS NU_NOTA_CH 'Nota da prova de: Hist�ria e Geografia para os que solicitaram certifica��o de Ensino Fundamental; ou Ci�ncias Humanas e suas Tecnologias para os solicitaram certifica��o do Ensino M�dio.'.
VARIABLE LABELS IN_APROVADO_LC 'Indica se o participante foi aprovado em:L�ngua Portuguesa, L�ngua Estrangeira Moderna, Artes, Educa��o F�sica e Reda��o para Ensino Fundamental; ou Linguagens e C�digos e suas Tecnologias e Reda��o para Ensino M�dio.'.
VALUE LABELS IN_APROVADO_LC
0 'N�o'
1 'Sim'.
VARIABLE LABELS IN_APROVADO_MT 'Indica se o participante foi aprovado na prova de: Matem�tica para os que solicitaram certifica��o do Ensino Fundamental; ou Matem�tica e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'.
VALUE LABELS IN_APROVADO_MT
0 'N�o'
1 'Sim'.
VARIABLE LABELS IN_APROVADO_CN 'Indica se o participante foi aprovado na prova de: Ci�ncias Naturais para Ensino Fundamental; ou Ci�ncias da Natureza e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'.   
VALUE LABELS IN_APROVADO_CN
0 'N�o'
1 'Sim'.
VARIABLE LABELS IN_APROVADO_CH 'Indica se o participante foi aprovado na prova de: Hist�ria e Geografia para Ensino Fundamental; ou Ci�ncias Humanas e suas Tecnologias para os solicitaram certifica��o do Ensino M�dio.'.
VALUE LABELS IN_APROVADO_CH
0 'N�o'
1 'Sim'.
VARIABLE LABELS TX_RESPOSTAS_LC 'Vetor com as respostas da parte objetiva: L�ngua Portuguesa, L�ngua Estrangeira Moderna, Artes, Educa��o F�sica e Reda��o para Fundamental; ou Linguagens e C�digos e suas Tecnologias e Reda��o para Ensino M�dio.'.
VARIABLE LABELS TX_RESPOSTAS_MT 'Vetor com as respostas da parte objetiva da prova de: Matem�tica para os que solicitaram certifica��o do Ensino Fundamental; ou Matem�tica e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'.
VARIABLE LABELS TX_RESPOSTAS_CN 'Vetor com as respostas da parte objetiva da prova de: Ci�ncias Naturais para Ensino Fundamental; ou Ci�ncias da Natureza e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'.
VARIABLE LABELS TX_RESPOSTAS_CH 'Vetor com as respostas da parte objetiva da prova de: Hist�ria e Geografia para Ensino Fundamental; ou Ci�ncias Humanas e suas Tecnologias para os solicitaram certifica��o do Ensino M�dio.'.
VARIABLE LABELS TX_GABARITO_LC 'Vetor com o gabarito da parte objetiva: L�ngua Portuguesa, L�ngua Estrangeira Moderna, Artes, Educa��o F�sica e Reda��o para Ensino Fundamental; ou Linguagens e C�digos e suas Tecnologias e Reda��o para Ensino M�dio.'.
VARIABLE LABELS TX_GABARITO_MT 'Vetor com o gabarito da parte objetiva da prova de: Matem�tica para os que solicitaram certifica��o do Ensino Fundamental; ou Matem�tica e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'.
VARIABLE LABELS TX_GABARITO_CN 'Vetor com o gabarito da parte objetiva da prova de: Ci�ncias Naturais para Ensino Fundamental; ou Ci�ncias da Natureza e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'.
VARIABLE LABELS TX_GABARITO_CH 'Vetor com o gabarito da parte objetiva da prova de: Hist�ria e Geografia para Ensino Fundamental; ou Ci�ncias Humanas e suas Tecnologias para os solicitaram certifica��o do Ensino M�dio.'.  
VARIABLE LABELS TP_STATUS_REDACAO 'Situa��o da reda��o do participante'.
VALUE LABELS TP_STATUS_REDACAO
1 	'Sem problemas'
2	'Anulada'
3	'C�pia Texto Motivador'
4	'Em Branco'
6	'Fuga ao tema'
7	'N�o atendimento ao tipo textual'
8	'Texto insuficiente'.
VARIABLE LABELS NU_NOTA_COMP1 'Nota da compet�ncia 1 - Demonstrar dom�nio da modalidade escrita formal da L�ngua Portuguesa.'. 
VARIABLE LABELS NU_NOTA_COMP2 'Nota da compet�ncia 2 - Compreender a proposta de reda��o e aplicar conceitos das v�rias �reas de conhecimento para desenvolver o tema, dentro dos limites estruturais do texto dissertativo-argumentativo em prosa.'.
VARIABLE LABELS NU_NOTA_COMP3 'Nota da compet�ncia 3 - Selecionar, relacionar, organizar e interpretar informa��es, fatos, opini�es e argumentos em defesa de um ponto de vista.'.
VARIABLE LABELS NU_NOTA_COMP4 'Nota da compet�ncia 4 - Demonstrar conhecimento dos mecanismos lingu�sticos necess�rios para a constru��o da argumenta��o.'.   
VARIABLE LABELS NU_NOTA_COMP5 'Nota da compet�ncia 5 - Elaborar proposta de interven��o para o problema abordado, respeitando os direitos humanos. Essa nota ser� atribu�da apenas para os participantes que solicitaram certifica��o de Ensino M�dio.'.
VARIABLE LABELS NU_NOTA_REDACAO 'Nota da prova de reda��o.'.
VARIABLE LABELS Q01 'Quantas pessoas moram com voc�? (incluindo filhos, irm�os, parentes e amigos)'.
VALUE LABELS Q01
'A'	'Moro sozinho'
'B'	'Uma a tr�s'
'C'	'Quatro a sete'
'D'	'Oito a dez'
'E'	'Mais de dez'.
VARIABLE LABELS Q02 'A casa onde voc� mora �? (Marque apenas uma resposta)'.
VALUE LABELS Q02
'A'	'Pr�pria'
'B'	'Alugada'
'C'	'Cedida'.
VARIABLE LABELS Q03 'Sua casa est� localizada em? (Marque apenas uma resposta)'.
VALUE LABELS Q03
'A'	'Zona rural'
'B'	'Zona urbana'
'C'	'Comunidade ind�gena'
'D'	'Comunidade quilombola'.
VARIABLE LABELS Q04 'Qual � o n�vel de escolaridade do seu pai? (Marque apenas uma resposta)'.
VALUE LABELS Q04
'A'	'Da 1� � 4� s�rie do Ensino Fundamental (antigo prim�rio)'
'B'	'Da 5� � 8� s�rie do Ensino Fundamental (antigo gin�sio)'
'C'	'Ensino M�dio (antigo 2� grau)'
'D'	'Ensino Superior'
'E'	'Especializa��o'
'F'	'N�o estudou'
'G'	'N�o sei'.
VARIABLE LABELS Q05 'Qual � o n�vel de escolaridade da sua m�e? (Marque apenas uma resposta)'.
VALUE LABELS Q05
'A'	'Da 1� � 4� s�rie do Ensino Fundamental (antigo prim�rio)'
'B'	'Da 5� � 8� s�rie do Ensino Fundamental (antigo gin�sio)'
'C'	'Ensino M�dio (antigo 2� grau)'
'D'	'Ensino Superior'
'E'	'Especializa��o'
'F'	'N�o estudou'
'G'	'N�o sei'.
VARIABLE LABELS Q06 'Somando a sua renda com a renda das pessoas que moram com voc�, quanto �, aproximadamente, a renda familiar mensal? (Marque apenas uma resposta)'.
VALUE LABELS Q06
'A'	'Nenhuma renda'
'B'	'At� 1 sal�rio m�nimo (at� R$ 954,00)'
'C'	'De 1 a 3 sal�rios m�nimos (de R$ 954,01 at� R$ 2.862,00)'
'D'	'De 3 a 6 sal�rios m�nimos (de R$ 2.862,01 at� R$ 5.724,00)'
'E'	'De 6 a 9 sal�rios m�nimos (de R$ 5.724,01 at� R$ 8.586,00)'
'F'	'De 9 a 12 sal�rios m�nimos (de R$ 8.586,01 at� R$ 11.448,00)'
'G'	'De 12 a 15 sal�rios m�nimos (de R$ 11.448,01 at� R$ 14.310,00)'
'H'	'Mais de 15 sal�rios m�nimos (mais de R$ 14.310,01)'.
VARIABLE LABELS Q07 'Qual a sua renda mensal, aproximadamente? (Marque apenas uma resposta)'.
VALUE LABELS Q07
'A'	'Nenhuma renda'
'B'	'At� 1 sal�rio m�nimo (at� R$ 954,00)'
'C'	'De 1 a 3 sal�rios m�nimos (de R$ 954,01 at� R$ 2.862,00)'
'D'	'De 3 a 6 sal�rios m�nimos (de R$ 2.862,01 at� R$ 5.724,00)'
'E'	'De 6 a 9 sal�rios m�nimos (de R$ 5.724,01 at� R$ 8.586,00)'
'F'	'De 9 a 12 sal�rios m�nimos (de R$ 8.586,01 at� R$ 11.448,00)'
'G'	'De 12 a 15 sal�rios m�nimos (de R$ 11.448,01 at� R$ 14.310,00)'
'H'	'Mais de 15 sal�rios m�nimos (mais de R$ 14.310,01)'.
VARIABLE LABELS Q08 'Voc� trabalha ou j� trabalhou? (Marque apenas uma resposta)'.
VALUE LABELS Q08
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS Q09 ' Em que voc� trabalha atualmente? (Marque apenas uma resposta)'.
VALUE LABELS Q09
'A'	'Na agricultura, no campo, na fazenda ou na pesca'
'B'	'Na ind�stria'
'C'	'Na constru��o civil'
'D'	'No com�rcio, banco, transporte, hotelaria ou outros servi�os'
'E'	'Como funcion�rio(a) do governo federal, estadual ou municipal'
'F'	'Como profissional liberal, professora ou t�cnica de n�vel superior'
'G'	'Trabalho fora de casa em atividades informais (pintor, eletricista, encanador, feirante, ambulante, guardador/a de carros, catador/a de lixo)'
'H'	'Trabalho em minha casa informalmente (costura, aulas particulares, cozinha, artesanato, carpintaria etc.)'
'I'	'Fa�o trabalho dom�stico em casa de outras pessoas (cozinheiro/a, mordomo/governanta, jardineiro, bab�, lavadeira, faxineiro/a, acompanhante de idosos/as etc.)'
'J'	'No lar (sem remunera��o)'
'K'	'Outro'
'L'	'N�o trabalho'.
VARIABLE LABELS Q10 ' Indique o grau de import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar: Ajudar nas despesas com a casa'.
VARIABLE LABELS Q11 ' Indique o grau de import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar: Sustentar minha fam�lia (esposo/a, filhos/as etc.)'.
VARIABLE LABELS Q12 ' Indique o grau de import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar: Ser independente (ganhar meu pr�prio dinheiro)'.
VARIABLE LABELS Q13 ' Indique o grau de import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar: Adquirir experi�ncia'.
VARIABLE LABELS Q14 ' Indique o grau de import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar: Custear/ pagar meus estudos'.
VARIABLE LABELS Q15 ' Quantas horas semanais voc� trabalha? (Marque apenas uma resposta)'.
VALUE LABELS Q15
'A'	'Sem jornada fixa, at� 10 horas semanais'
'B'	'De 11 a 20 horas semanais'
'C'	'De 21 a 30 horas semanais'
'D'	'De 31 a 40 horas semanais'
'E'	'Mais de 40 horas semanais'.
VARIABLE LABELS Q16 ' Com que idade voc� come�ou a trabalhar? (Marque apenas uma resposta)'.
VALUE LABELS Q16
'A'	'Antes dos 14 anos'
'B'	'Entre 14 e 16 anos'
'C'	'Entre 17 e 18 anos'
'D'	'Ap�s 18 anos'.
VARIABLE LABELS Q17 ' Como voc� avalia ter estudado e trabalhado durante seus estudos? (Marque apenas uma resposta)'.
VALUE LABELS Q17
'A'	'Atrapalhou meus estudos'
'B'	'Possibilitou meus estudos'
'C'	'Possibilitou meu crescimento pessoal'
'D'	'N�o atrapalhou meus estudos'
'E'	'N�o trabalhei durante meus estudos'.
VARIABLE LABELS Q18 ' Voc� j� reprovou alguma vez? (Marque apenas uma resposta)'.
VALUE LABELS Q18
'A'	'N�o, nunca'
'B'	'Sim, uma vez'
'C'	'Sim, duas vezes'
'D'	'Sim, tr�s vezes ou mais'.
VARIABLE LABELS Q19 ' Qual principal motivo faria voc� voltar a estudar ou continuar estudando? (Marque apenas uma resposta)'.
VALUE LABELS Q19
'A'	'Conseguir um emprego'
'B'	'Progredir no emprego atual'
'C'	'Conseguir um emprego melhor'
'D'	'Adquirir mais conhecimento, ficar atualizado'
'E'	'Atender � expectativa de meus familiares sobre meus estudos'
'F'	'N�o pretendo voltar a estudar'.
VARIABLE LABELS Q20 ' Se voc� j� frequentou a escola regular, em que s�rie voc� deixou de estudar? (Marque apenas uma resposta)'.
VALUE LABELS Q20
'A'	'N�o frequentei'
'B'	'1� s�rie do ensino fundamental (antigo prim�rio, 1� grau)'
'C'	'2� s�rie do ensino fundamental (antigo prim�rio, 1� grau)'
'D'	'3� s�rie do ensino fundamental (antigo prim�rio, 1� grau)'
'E'	'4� s�rie do ensino fundamental (antigo prim�rio, 1� grau)'
'F'	'5� s�rie do ensino fundamental (antigo gin�sio, 1� grau)'
'G'	'6� s�rie do ensino fundamental (antigo gin�sio, 1� grau)'
'H'	'7� s�rie do ensino fundamental (antigo gin�sio, 1� grau)'
'I'	'8� s�rie do ensino fundamental (antigo gin�sio, 1� grau)'
'J'	'1� s�rie do ensino m�dio (antigo 2� grau)'
'K'	'2� s�rie do ensino m�dio (antigo 2� grau)'
'L'	'3� s�rie do ensino m�dio (antigo 2� grau)'.
VARIABLE LABELS Q21 ' Se voc� deixou de frequentar a escola regular, quantos anos voc� tinha? (Marque apenas uma resposta)'.
VALUE LABELS Q21
'A'	'Nunca frequentei a escola'
'B'	'Estou frequentando a escola'
'C'	'Menos de 10 anos'
'D'	'Entre 10 e 14 anos (inclusive)'
'E'	'Entre 15 e 18 anos (inclusive)'
'F'	'Entre 19 e 24 anos (inclusive)'
'G'	'Entre 25 e 30 anos (inclusive)'
'H'	'Mais de 30 anos'.
VARIABLE LABELS Q22 ' Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA: Para conseguir o certificado de conclus�o do Ensino Fundamental ou M�dio'.
VARIABLE LABELS Q23 ' Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA: Porque parentes, amigos(as) e professores(as) me recomendaram'.
VARIABLE LABELS Q24 ' Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA: Para continuar meus estudos'.
VARIABLE LABELS Q25 ' Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA: Porque n�o posso estudar'.
VARIABLE LABELS Q26 ' Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA: Porque n�o quero ou n�o gosto de estudar'.
VARIABLE LABELS Q27 ' Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA: Por que � a melhor maneira para conciliar meus estudos e trabalho'.
VARIABLE LABELS Q28 ' Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA: Para conseguir um emprego'.
VARIABLE LABELS Q29 ' Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA: Para fazer curso profissionalizante e me preparar para o trabalho'.
VARIABLE LABELS Q30 ' Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA: Para progredir no emprego atual'.
VARIABLE LABELS Q31 ' Voc� cursa ou j� cursou a Educa��o de Jovens e Adultos � EJA? (Marque apenas uma resposta)'.
VALUE LABELS Q31
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS Q32 ' Como � ou era o curso de EJA que voc� frequenta ou frequentou? (Marque apenas uma resposta)'.
VALUE LABELS Q32
'A'	'Curso presencial em escola p�blica'
'B'	'Curso presencial em escola privada'
'C'	'Curso presencial na empresa em que trabalha, institui��o filantr�pica ou religiosa'
'D'	'Curso a dist�ncia (via r�dio, televis�o, internet, correio, com apostilas)'
'E'	'Curso semi-presencial em escola p�blica'
'F'	'Curso semi-presencial em escola privada'.
VARIABLE LABELS Q33 ' Caso tenha deixado de cursar a EJA indique o(s) motivos(s)? N�o se aplica'.
VALUE LABELS Q33
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS Q34 ' Caso tenha deixado de cursar a EJA indique o(s) motivos(s)? Trabalho/ n�o tinha tempo de estudar'.
VALUE LABELS Q34
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS Q35' Caso tenha deixado de cursar a EJA indique o(s) motivos(s)? Estudava no curso da empresa e foi interrompido'.
VALUE LABELS Q35
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS Q36 ' Caso tenha deixado de cursar a EJA indique o(s) motivos(s)? Problemas de sa�de ou acidentes comigo ou familiares'.
VALUE LABELS Q36
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS Q37 ' Caso tenha deixado de cursar a EJA indique o(s) motivos(s)? Mudan�a de estado, munic�pio ou cidade'.
VALUE LABELS Q37
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS Q38 ' Caso tenha deixado de cursar a EJA indique o(s) motivos(s)? Motivos pessoais: casamento / filhos'.
VALUE LABELS Q38
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS Q39 ' Caso tenha deixado de cursar a EJA indique o(s) motivos(s)? N�o tinha interesse / desisti'.
VALUE LABELS Q39
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS Q40 ' Caso tenha deixado de cursar a EJA indique o(s) motivos(s)? Senti-me discriminado(a) / Sofri agress�o (f�sica ou verbal)'.
VALUE LABELS Q40
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS Q41 ' Em que medida os motivos a seguir influenciaram no fato de voc� n�o ter frequentado ou ter abandonado a escola regular: Inexist�ncia de vaga em escola p�blica'.
VARIABLE LABELS Q42 ' Em que medida os motivos a seguir influenciaram no fato de voc� n�o ter frequentado ou ter abandonado a escola regular: Aus�ncia de escola perto de casa'.
VARIABLE LABELS Q43 ' Em que medida os motivos a seguir influenciaram no fato de voc� n�o ter frequentado ou ter abandonado a escola regular: Falta de interesse em estudar'.
VARIABLE LABELS Q44 ' Em que medida os motivos a seguir influenciaram no fato de voc� n�o ter frequentado ou ter abandonado a escola regular:  Trabalho - falta de tempo para estudar'.
VARIABLE LABELS Q45 ' Em que medida os motivos a seguir influenciaram no fato de voc� n�o ter frequentado ou ter abandonado a escola regular:  Motivos pessoais - casamento / filhos'.
VARIABLE LABELS Q46 ' Em que medida os motivos a seguir influenciaram no fato de voc� n�o ter frequentado ou ter abandonado a escola regular: Falta de apoio familiar'.
VARIABLE LABELS Q47 ' Em que medida os motivos a seguir influenciaram no fato de voc� n�o ter frequentado ou ter abandonado a escola regular: Problemas de sa�de ou acidente comigo ou familiares'.
VARIABLE LABELS Q48 ' Em que medida os motivos a seguir influenciaram no fato de voc� n�o ter frequentado ou ter abandonado a escola regular: Discrimina��o/preconceitos de ra�a, sexo, cor, idade ou socioecon�mico'.
.