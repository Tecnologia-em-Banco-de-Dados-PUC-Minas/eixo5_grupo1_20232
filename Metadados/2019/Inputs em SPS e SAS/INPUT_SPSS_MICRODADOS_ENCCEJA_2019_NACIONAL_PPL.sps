/**************************************************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                         			     */ 
/*                                   			                                                                             */
/*  Coordena��o-Geral do Sistema Nacional de Avalia��o da Educa��o B�sica              		     */
/*-------------------------------------------------------------------------------------					     */
/*  PROGRAMA:                                                                                         			     */
/*               INPUT_SPSS_MICRODADOS_ENCCEJA_2019_PPL_NACIONAL 	                            	     */
/*-------------------------------------------------------------------------------------					     */
/* DESCRICAO: PROGRAMA PARA LEITURA DOS MICRODADOS DO ENCCEJA 2019- PPL NACIONAL	     */
/* COM DADOS DE CADASTRO E RESPOSTAS						     */
/*		 							     */
/**************************************************************************************************************************************/
/**************************************************************************************************************************************/ 
/* Obs:                                                                                				     */
/* 		                                                                               			     */
/* Para abrir os microdados, � necess�rio salvar este programa e 				     */
/* o arquivo "MICRODADOS_ENCCEJA_2019_PPL_NAC.csv" do ENCCEJA no diret�rio C:\ do computador.      	     */
/*							                                         */ 
/* Ao terminar esses procedimentos, execute o programa salvo utilizando                                                             */
/* as vari�veis de interesse.                                                                                                                                */
/**************************************************************************************************************************************/
/*                                  ATEN��O                                                                                                                    */ 
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
  /FILE="C:\MICRODADOS_ENCCEJA_NACIONAL_PPL_2019.csv"
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
  NO_ENTIDADE_CERTIFICADORA A111
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
  NU_NOTA_REDACAO COMMA4.2.
CACHE.
EXECUTE.
DATASET NAME ENCCEJA_PPL_NACIONAL WINDOW=FRONT.

VARIABLE LABELS	NU_INSCRICAO 'Campo com m�scara no n�mero de inscri��o do candidato.'.
VARIABLE LABELS	NU_ANO 'Ano do Exame Encceja que est� em an�lise.'.    
VARIABLE LABELS	TP_CERTIFICACAO 'Indicador do tipo de certifica��o pedida pelo participante.'.
VALUE LABELS TP_CERTIFICACAO
1 'Ensino Fundamental'
2 'Ensino M�dio'.
VARIABLE LABELS	TP_FAIXA_ETARIA 'Faixa et�ria do participante conforme idade em 31 de dezembro do ano do exame.'. 
VALUE LABELS TP_FAIXA_ETARIA
1    'Menor de 17 anos'
2    '17 anos'
3    '18 anos'
4    '19 anos'
5    '20 anos'
6    '21 anos'
7    '22 anos'
8    '23 anos'
9    '24 anos'
10  '25 anos'
11  'Entre 26 e 30 anos'
12  'Entre 31 e 35 anos'
13  'Entre 36 e 40 anos'
14  'Entre 41 e 45 anos'
15  'Entre 46 e 50 anos'
16  'Entre 51 e 55 anos'
17  'Entre 56 e 60 anos'
18  'Entre 61 e 65 anos'
19  'Entre 66 e 70 anos'
20  'Maior de 70 anos'.

VARIABLE LABELS	TP_SEXO 'Sexo do participante.'. 
VALUE LABELS TP_SEXO
'F'  'Feminino'
'M'  'Masculino'.
VARIABLE LABELS	CO_UF_PROVA 'C�digo da Unidade da Federa��o da aplica��o da prova'.
VARIABLE LABELS	SG_UF_PROVA 'Sigla da Unidade da Federa��o da aplica��o da prova'.
VARIABLE LABELS	NO_ENTIDADE_CERTIFICADORA 'Nome da Unidade Participante respons�vel pela certifica��o do exame.'.
VARIABLE LABELS	IN_PROVA_LC 'Indica solicita��o de inscri��o em: L�ngua Portuguesa, L�ngua Estrangeira Moderna, Artes, Educa��o F�sica e Reda��o para Ensino Fundamental; ou Linguagens e C�digos e suas Tecnologias e Reda��o para Ensino M�dio.'.  
VALUE LABELS  IN_PROVA_LC
0 'N�o'
1 'Sim'.
VARIABLE LABELS	IN_PROVA_MT 'Indica solicita��o de inscri��o do participante na prova de: Matem�tica para os que solicitaram certifica��o do Ensino Fundamental; ou Matem�tica e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'.
VALUE LABELS IN_PROVA_MT
0 'N�o'
1 'Sim'.
VARIABLE LABELS	IN_PROVA_CN 'Indica solicita��o de inscri��o em: Ci�ncias Naturais para os que solicitaram certifica��o do Ensino Fundamental; ou Ci�ncias da Natureza e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'.
VALUE LABELS IN_PROVA_CN
0 'N�o'
1 'Sim'.
VARIABLE LABELS	IN_PROVA_CH 'Indica solicita��o de inscri��o em: Hist�ria e Geografia para os que solicitaram certifica��o de Ensino Fundamental; ou Ci�ncias Humanas e suas Tecnologias para os solicitaram certifica��o do Ensino M�dio.'.
VALUE LABELS IN_PROVA_CH
0 'N�o'
1 'Sim'.
VARIABLE LABELS	TP_PRESENCA_LC 'Indica a presen�a em: L�ngua Portuguesa, L�ngua Estrangeira Moderna, Artes, Educa��o F�sica e Reda��o para Ensino Fundamental; ou Linguagens e C�digos e suas Tecnologias e Reda��o para Ensino M�dio.'. 
VALUE LABELS TP_PRESENCA_LC
0	'Faltou � prova'
1	'Presente � prova'
2	'Eliminado na prova'
3	'Aplica��o n�o realizada'.
VARIABLE LABELS	TP_PRESENCA_MT 'Indica a presen�a em: Matem�tica para os que solicitaram certifica��o do Ensino Fundamental; ou Matem�tica e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'.
VALUE LABELS TP_PRESENCA_MT
0	'Faltou � prova'
1	'Presente � prova'
2	'Eliminado na prova'
3	'Aplica��o n�o realizada'.
VARIABLE LABELS	TP_PRESENCA_CN 'Indica a presen�a em: Ci�ncias Naturais para os que solicitaram certifica��o do Ensino Fundamental; ou Ci�ncias da Natureza e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'.
VALUE LABELS TP_PRESENCA_CN
0	'Faltou � prova'
1	'Presente � prova'
2	'Eliminado na prova'
3	'Aplica��o n�o realizada'.
VARIABLE LABELS	TP_PRESENCA_CH 'Indica a presen�a do participante na prova de: Hist�ria e Geografia para os que solicitaram certifica��o de Ensino Fundamental; ou Ci�ncias Humanas e suas Tecnologias para os solicitaram certifica��o do Ensino M�dio.'.
VALUE LABELS TP_PRESENCA_CH
0	'Faltou � prova'
1	'Presente � prova'
2	'Eliminado na prova'
3	'Aplica��o n�o realizada'.
VARIABLE LABELS	CO_PROVA_LC 'C�digo da prova de: L�ngua Portuguesa, L�ngua Estrangeira Moderna, Artes, Educa��o F�sica e Reda��o para Ensino Fundamental; ou Linguagens e C�digos e suas Tecnologias e Reda��o para Ensino M�dio.' .     
VALUE LABELS CO_PROVA_LC
201919	'Cinza (Ensino Fundamental)'
201923	'Branca (Ensino M�dio)'.
VARIABLE LABELS	CO_PROVA_MT 'C�digo da prova de: Matem�tica para os que solicitaram certifica��o do Ensino Fundamental; ou Matem�tica e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'.
VALUE LABELS CO_PROVA_MT
201918	'Amarela (Ensino Fundamental)'
201922	'Amarela (Ensino M�dio)'.
VARIABLE LABELS	CO_PROVA_CN 'C�digo da prova de: Ci�ncias Naturais para os que solicitaram certifica��o do Ensino Fundamental; ou Ci�ncias da Natureza e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'.
VALUE LABELS CO_PROVA_CN
201917	'Rosa (Ensino Fundamental)'
201921	'Rosa (Ensino M�dio)'.
VARIABLE LABELS	CO_PROVA_CH 'C�digo da prova de: Hist�ria e Geografia para os que solicitaram certifica��o de Ensino Fundamental; ou Ci�ncias Humanas e suas Tecnologias para os solicitaram certifica��o do Ensino M�dio.'.
VALUE LABELS CO_PROVA_CH
201920	'Azul (Ensino Fundamental)'
201924	'Azul (Ensino M�dio)'.
VARIABLE LABELS	NU_NOTA_LC 'Nota da prova de: L�ngua Portuguesa, L�ngua Estrangeira Moderna, Artes, Educa��o F�sica e Reda��o para Ensino Fundamental; ou Linguagens e C�digos e suas Tecnologias e Reda��o para Ensino M�dio.'.
VARIABLE LABELS	NU_NOTA_MT 'Nota da prova de: Matem�tica para os que solicitaram certifica��o do Ensino Fundamental; ou Matem�tica e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'.
VARIABLE LABELS	NU_NOTA_CN 'Nota da prova de: Ci�ncias Naturais para os que solicitaram certifica��o do Ensino Fundamental; ou Ci�ncias da Natureza e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'.
VARIABLE LABELS	NU_NOTA_CH 'Nota da prova de: Hist�ria e Geografia para os que solicitaram certifica��o de Ensino Fundamental; ou Ci�ncias Humanas e suas Tecnologias para os solicitaram certifica��o do Ensino M�dio.'.
VARIABLE LABELS	IN_APROVADO_LC 'Indica se o participante foi aprovado em: L�ngua Portuguesa, L�ngua Estrangeira Moderna, Artes, Educa��o F�sica e Reda��o para Ensino Fundamental; ou Linguagens e C�digos e suas Tecnologias e Reda��o para Ensino M�dio'.
VALUE LABELS IN_APROVADO_LC
0 'N�o'
1 'Sim'.
VARIABLE LABELS	IN_APROVADO_MT 'Indica se o participante foi aprovado na prova de: Matem�tica para Ensino Fundamental; ou Matem�tica e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'.
VALUE LABELS IN_APROVADO_MT
0 'N�o'
1 'Sim'.
VARIABLE LABELS	IN_APROVADO_CN 'Indica se o participante foi aprovado na prova de: Ci�ncias Naturais para Ensino Fundamental; ou Ci�ncias da Natureza e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio'.  
VALUE LABELS IN_APROVADO_CN
0 'N�o'
1 'Sim'.
VARIABLE LABELS	IN_APROVADO_CH 'Indica se o participante foi aprovado na prova de: Hist�ria e Geografia para Ensino Fundamental; ou Ci�ncias Humanas e suas Tecnologias para os solicitaram certifica��o do Ensino M�dio.'.
VALUE LABELS IN_APROVADO_CH
0 'N�o'
1 'Sim'.
VARIABLE LABELS	TX_RESPOSTAS_LC 'Vetor com as respostas da parte objetiva: L�ngua Portuguesa, L�ngua Estrangeira Moderna, Artes, Ed. F�sica e Reda��o para Ensino Fundamental; ou Linguagens e C�digos e suas Tecnologias e Reda��o para Ensino M�dio.'.
VARIABLE LABELS	TX_RESPOSTAS_MT 'Vetor com as respostas da parte objetiva da prova de: Matem�tica para os que solicitaram certifica��o do Ensino Fundamental; ou Matem�tica e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'.
VARIABLE LABELS	TX_RESPOSTAS_CN 'Vetor com as respostas da parte objetiva da prova de: Ci�ncias Naturais para Ensino Fundamental; ou Ci�ncias da Natureza e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'.
VARIABLE LABELS	TX_RESPOSTAS_CH 'Vetor com as respostas da parte objetiva da prova de: Hist�ria e Geografia para Ensino Fundamental; ou Ci�ncias Humanas e suas Tecnologias para os solicitaram certifica��o do Ensino M�dio.'.
VARIABLE LABELS	TX_GABARITO_LC 'Vetor com o gabarito da parte objetiva: L�ngua Portuguesa, L�ngua Estrangeira Moderna, Artes, Educa��o F�sica e Reda��o para Ensino Fundamental; ou Linguagens e C�digos e suas Tecnologias e Reda��o para Ensino M�dio.'.
VARIABLE LABELS	TX_GABARITO_MT 'Vetor com o gabarito da parte objetiva da prova de: Matem�tica para os que solicitaram certifica��o do Ensino Fundamental; ou Matem�tica e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'.  
VARIABLE LABELS	TX_GABARITO_CN 'Vetor com o gabarito da parte objetiva da prova de: Ci�ncias Naturais para Ensino Fundamental; ou Ci�ncias da Natureza e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'.
VARIABLE LABELS	TX_GABARITO_CH 'Vetor com o gabarito da parte objetiva da prova de: Hist�ria e Geografia para Ensino Fundamental; ou Ci�ncias Humanas e suas Tecnologias para os solicitaram certifica��o do Ensino M�dio.' . 
VARIABLE LABELS	TP_STATUS_REDACAO 'Situa��o da reda��o do participante'.
VALUE LABELS TP_STATUS_REDACAO
1 	'Sem problemas'
2	'Anulada'
3	'C�pia Texto Motivador'
4	'Em Branco'
6	'Fuga ao tema'
7	'N�o atendimento ao tipo textual'
8	'Texto insuficiente'.
VARIABLE LABELS	NU_NOTA_COMP1 'Nota da compet�ncia 1 - Demonstrar dom�nio da modalidade escrita formal da L�ngua Portuguesa.'. 
VARIABLE LABELS	NU_NOTA_COMP2 'Nota da compet�ncia 2 - Compreender a proposta de reda��o e aplicar conceitos das v�rias �reas de conhecimento para desenvolver o tema, dentro dos limites estruturais do texto dissertativo-argumentativo em prosa.'.
VARIABLE LABELS	NU_NOTA_COMP3 'Nota da compet�ncia 3 - Selecionar, relacionar, organizar e interpretar informa��es, fatos, opini�es e argumentos em defesa de um ponto de vista.'.
VARIABLE LABELS	NU_NOTA_COMP4 'Nota da compet�ncia 4 - Demonstrar conhecimento dos mecanismos lingu�sticos necess�rios para a constru��o da argumenta��o.'.   
VARIABLE LABELS	NU_NOTA_COMP5 'Nota da compet�ncia 5 - Elaborar proposta de interven��o para o problema abordado, respeitando os direitos humanos. Essa nota ser� atribu�da apenas para os participantes que solicitaram certifica��o de Ensino M�dio.'.
VARIABLE LABELS	NU_NOTA_REDACAO 'Nota da prova de reda��o.'.
.