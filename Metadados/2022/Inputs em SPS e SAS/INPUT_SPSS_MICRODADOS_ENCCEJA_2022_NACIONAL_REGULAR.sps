/**************************************************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                         			     */ 
/*                                   			                                                                             */
/*  Coordena��o-Geral de Medidas da Educa��o B�sica              		     		    */
/*-------------------------------------------------------------------------------------					     */
/*  PROGRAMA:                                                                                         			     */
/*               INPUT_SPSS_MICRODADOS_ENCCEJA_2022_NACIONAL_REGULAR	                            	     */
/*-------------------------------------------------------------------------------------					     */
/* DESCRICAO: PROGRAMA PARA LEITURA DOS MICRODADOS DO ENCCEJA 2022- REGULAR NACIONAL    */
/* COM DADOS DE CADASTRO, RESPOSTAS E QUESTION�RIO SOCIOECON�MICO		     */
/*		 							     */
/**************************************************************************************************************************************/
/**************************************************************************************************************************************/ 
/* Obs:                                                                                				     */
/* 		                                                                               			     */
/* Para abrir os microdados, � necess�rio salvar este programa e o				     */
/*arquivo "MICRODADOS_ENCCEJA_2022_REG_NAC.csv" do ENCCEJA no diret�rio C:\ do computador	     */
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
  /FILE="C:\MICRODADOS_ENCCEJA_2022_REG_NAC.csv" 
  /DELCASE=LINE 
  /DELIMITERS=";"
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
  Q10 A1
  Q11 A1 
  Q12 A1 
  Q13 A1 
  Q14 A1 
  Q15 A1 
  Q16 A1 
  Q17 A1 
  Q18 A1 
  Q19 A1 
  Q20 A1 
  Q21 A1 
  Q22 A1 
  Q23 A1 
  Q24 A1 
  Q25 A1 
  Q26 A1 
  Q27 A1 
  Q28 A1 
  Q29 A1 
  Q30 A1 
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
  Q41 A1 
  Q42 A1 
  Q43 A1 
  Q44 A1 
  Q45 A1 
  Q46 A1 
  Q47 A1 
  Q48 A1
  Q49 A1
  Q50 A1
  Q51 A1
  Q52 A1
  Q53 A1
  Q54 A1
  Q55 A1
  Q56 A1
  Q57 A1
  Q58 A1
  Q59 A1
  Q60 A1
  Q61 A1
  Q62 A1. 
CACHE. 
EXECUTE.
DATASET NAME ENCCEJA_2022_REG_NAC WINDOW=FRONT.

VARIABLE LABELS NU_INSCRICAO 'Campo com m�scara no n�mero de inscri��o do candidato.'.
VARIABLE LABELS NU_ANO 'Ano do Exame Encceja que est� em an�lise.'.    
VARIABLE LABELS TP_CERTIFICACAO 'Indicador do tipo de certifica��o pedida pelo participante.'.
VALUE LABELS TP_CERTIFICACAO
1 'Ensino Fundamental'
2 'Ensino M�dio'.
VARIABLE LABELS TP_FAIXA_ETARIA 'Faixa et�ria do participante'.
VALUE LABELS TP_FAIXA_ETARIA
1   'Menor de 17 anos'
2   '17 anos'
3   '18 anos'
4   '19 anos'
5   '20 anos'
6   '21 anos'
7   '22 anos'
8   '23 anos'
9   '24 anos'
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
2	'Eliminado na prova'.
VARIABLE LABELS TP_PRESENCA_MT 'Indica a presen�a do participante na prova de: Matem�tica para os que solicitaram certifica��o do Ensino Fundamental; ou Matem�tica e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'.
VALUE LABELS TP_PRESENCA_MT
0	'Faltou � prova'
1	'Presente � prova'
2	'Eliminado na prova'.
VARIABLE LABELS TP_PRESENCA_CN 'Indica a presen�a do participante na prova de: Ci�ncias Naturais para Ensino Fundamental; ou Ci�ncias da Natureza e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'.
VALUE LABELS TP_PRESENCA_CN
0	'Faltou � prova'
1	'Presente � prova'
2	'Eliminado na prova'.
VARIABLE LABELS TP_PRESENCA_CH 'Indica a presen�a do participante na prova de: Hist�ria e Geografia para os que solicitaram certifica��o de Ensino Fundamental; ou Ci�ncias Humanas e suas Tecnologias para os solicitaram certifica��o do Ensino M�dio.'.
VALUE LABELS TP_PRESENCA_CH
0	'Faltou � prova'
1	'Presente � prova'
2	'Eliminado na prova'.
VARIABLE LABELS CO_PROVA_LC 'C�digo da prova de: L�ngua Portuguesa, L�ngua Estrangeira Moderna, Artes, Educa��o F�sica e Reda��o para Ensino Fundamental; ou Linguagens e C�digos e suas Tecnologias e Reda��o para Ensino M�dio.'.      
VALUE LABELS CO_PROVA_LC
202051	'Cinza (Ensino Fundamental)'
202055	'Cinza - Ledor (Ensino Fundamental)'
202059	'Branca (Ensino M�dio)'
202063	'Branca - Ledor (Ensino M�dio)'.
VARIABLE LABELS CO_PROVA_MT 'C�digo da prova de: Matem�tica para os que solicitaram certifica��o do Ensino Fundamental; ou Matem�tica e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'.
VALUE LABELS CO_PROVA_MT
202050	'Amarela (Ensino Fundamental)'
202054	'Amarela - Ledor  (Ensino Fundamental)'
202058	'Amarela (Ensino M�dio)'
202062	'Amarela - Ledor (Ensino M�dio)'.
VARIABLE LABELS CO_PROVA_CN 'C�digo da prova de: Ci�ncias Naturais para os que solicitaram certifica��o do Ensino Fundamental; ou Ci�ncias da Natureza e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'.
VALUE LABELS CO_PROVA_CN
202049	'Rosa (Ensino Fundamental)'
202053	'Rosa - Ledor (Ensino Fundamental)'
202057	'Rosa (Ensino M�dio)'
202061	'Rosa - Ledor (Ensino M�dio)'.
VARIABLE LABELS CO_PROVA_CH 'C�digo da prova de: Hist�ria e Geografia para os que solicitaram certifica��o de Ensino Fundamental; ou Ci�ncias Humanas e suas Tecnologias para os solicitaram certifica��o do Ensino M�dio.'.
VALUE LABELS CO_PROVA_CH
202052	'Azul (Ensino Fundamental)'
202056	'Azul  - Ledor (Ensino Fundamental)'
202060	'Azul (Ensino M�dio)'
202064	'Azul - Ledor (Ensino M�dio)'.
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
8	'Texto insuficiente'
9	'Parte desconectada'.
VARIABLE LABELS NU_NOTA_COMP1 'Nota da compet�ncia 1 - Demonstrar dom�nio da modalidade escrita formal da L�ngua Portuguesa.'. 
VARIABLE LABELS NU_NOTA_COMP2 'Nota da compet�ncia 2 - Compreender a proposta de reda��o e aplicar conceitos das v�rias �reas de conhecimento para desenvolver o tema, dentro dos limites estruturais do texto dissertativo-argumentativo em prosa.'.
VARIABLE LABELS NU_NOTA_COMP3 'Nota da compet�ncia 3 - Selecionar, relacionar, organizar e interpretar informa��es, fatos, opini�es e argumentos em defesa de um ponto de vista.'.
VARIABLE LABELS NU_NOTA_COMP4 'Nota da compet�ncia 4 - Demonstrar conhecimento dos mecanismos lingu�sticos necess�rios para a constru��o da argumenta��o.'.   
VARIABLE LABELS NU_NOTA_COMP5 'Nota da compet�ncia 5 - Elaborar proposta de interven��o para o problema abordado, respeitando os direitos humanos. Essa nota ser� atribu�da apenas para os participantes que solicitaram certifica��o de Ensino M�dio.'.
VARIABLE LABELS NU_NOTA_REDACAO 'Nota da prova de reda��o.'.
VARIABLE LABELS Q01 'Qual o seu estado civil?'.
VALUE LABELS Q01
'A'  'Casado(a)'
'B'  'Divorciado(a)'
'C'  'Em uni�o est�vel'
'D'  'Solteiro(a)'
'E'  'Vi�vo(a)'.
VARIABLE LABELS Q02 'Voc� tem filho(s) menor(es) de 18 anos de idade?'.
VALUE LABELS Q02
'A'  'Sim'
'B'  'N�o tenho filho(s) menor(es) de 18 anos de idade.'
'C'  'N�o'.
VARIABLE LABELS Q03 'Quantos filhos menores de 18 anos de idade voc� tem? (Marque apenas uma resposta)'.
VALUE LABELS Q03
'A'  'Um'
'B'  'Dois'
'C'  'Tr�s'
'D'  'Quatro ou mais'.
VARIABLE LABELS Q04 'Voc� j� frequentou alguma vez a escola regular?'.
VALUE LABELS Q04
'A'  'Sim, j� frequentei escola regular.'
'B'  'Sim, estou frequentando escolar regular.'
'C'  'N�o, nunca frequentei.'.
VARIABLE LABELS Q05 'Em que s�rie voc� parou de estudar? (Marque apenas uma resposta)'.
VALUE LABELS Q05
'A'  '1� s�rie do ensino fundamental (antigo prim�rio, 1� grau)'
'B'  '2� s�rie do ensino fundamental (antigo prim�rio, 1� grau)'
'C'  '3� s�rie do ensino fundamental (antigo prim�rio, 1�grau)'
'D'  '4� s�rie do ensino fundamental (antigo prim�rio, 1� grau)'
'E'  '5� s�rie do ensino fundamental (antigo gin�sio, 1� grau)'
'F'  '6� s�rie do ensino fundamental (antigo gin�sio, 1� grau)'
'G'  '7� s�rie do ensino fundamental (antigo gin�sio, 1�grau)'
'H'  '8� s�rie do ensino fundamental (antigo gin�sio, 1� grau)'
'I'  '1� s�rie do ensino m�dio (antigo 2� grau)'
'J'  '2� s�rie do ensino m�dio (antigo 2� grau)'
'K'  '3� s�rie do ensino m�dio (antigo 2� grau)'.
VARIABLE LABELS Q06 'Com quantos anos de idade voc� tinha quando deixou de frequentar a escola?'.
VALUE LABELS Q06
'A'  'Menos de 10 anos de idade'
'B'  'Entre 10 e 14 anos de idade'
'C'  'Entre 15 e 17 anos de idade'
'D'  'Mais de 17 anos de idade'.
VARIABLE LABELS Q07 'Assinale  Sim ou N�o se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Exposi��o a situa��o de maus tratos na fam�lia.'.
VALUE LABELS Q07
'A'  'Sim'
'B'  'N�o'.
VARIABLE LABELS Q08 'Assinale  Sim ou N�o se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Falta de apoio familiar.'.
VALUE LABELS Q08
'A'  'Sim'
'B'  'N�o'.
VARIABLE LABELS Q09 'Assinale  Sim ou N�o se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Falta de escola perto de casa.'.
VALUE LABELS Q09
'A'  'Sim'
'B'  'N�o'.
VARIABLE LABELS Q10 'Assinale  Sim ou N�o se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Falta de tempo para estudar.'.
VALUE LABELS Q10
'A'  'Sim'
'B'  'N�o'.
VARIABLE LABELS Q11 'Assinale  Sim ou N�o se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Maternidade/paternidade na adolesc�ncia.'.
VALUE LABELS Q11
'A'  'Sim'
'B'  'N�o'.
VARIABLE LABELS Q12 'Assinale  Sim ou N�o se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Necessidade de ajudar nas tarefas de casa.'.
VALUE LABELS Q12
'A'  'Sim'
'B'  'N�o'.
VARIABLE LABELS Q13 'Assinale  Sim ou N�o se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Necessidade de trabalhar para ajudar a fam�lia.'.
VALUE LABELS Q13
'A'  'Sim'
'B'  'N�o'.
VARIABLE LABELS Q14 'Assinale  Sim ou N�o se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Repetidas mudan�as de domic�lio.'.
VALUE LABELS Q14
'A'  'Sim'
'B'  'N�o'.
VARIABLE LABELS Q15 'Assinale  Sim ou N�o se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Constante falta de professores.'.
VALUE LABELS Q15
'A'  'Sim'
'B'  'N�o'.
VARIABLE LABELS Q16 'Assinale  Sim ou N�o se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Dificuldade de relacionamento com os professores.'.
VALUE LABELS Q16
'A'  'Sim'
'B'  'N�o'.
VARIABLE LABELS Q17 'Assinale  Sim ou N�o se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Escola mal conservada e insegura.'.
VALUE LABELS Q17
'A'  'Sim'
'B'  'N�o'.
VARIABLE LABELS Q18 'Assinale  Sim ou N�o se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Formas de ensino/avalia��o desestimulantes.'.
VALUE LABELS Q18
'A'  'Sim'
'B'  'N�o'.
VARIABLE LABELS Q19 'Assinale  Sim ou N�o se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Inexist�ncia de vaga em escola p�blica.'.
VALUE LABELS Q19
'A'  'Sim'
'B'  'N�o'.
VARIABLE LABELS Q20 'Assinale  Sim ou N�o se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Percep��o de que os conte�dos das aulas n�o serviam para a vida.'.
VALUE LABELS Q20
'A'  'Sim'
'B'  'N�o'.
VARIABLE LABELS Q21 'Assinale a seguir se voc� faz parte de uma comunidade �tnico-racial:'.
VALUE LABELS Q21
'A'  'Comunidade ind�gena.'
'B'  'Comunidade remanescente de quilombo.'
'C'  'N�o fa�o parte de uma comunidade �tnico-racial.'.
VARIABLE LABELS Q22 'Assinale Sim ou  N�o  se os seguintes  motivos te influenciaram a participar do Encceja: Acelerar os estudos.'.
VALUE LABELS Q22
'A'  'Sim'
'B'  'N�o'.
VARIABLE LABELS Q23 'Assinale Sim ou  N�o  se os seguintes  motivos te influenciaram a participar do Encceja: Conquistar reconhecimento profissional.'.
VALUE LABELS Q23
'A'  'Sim'
'B'  'N�o'.
VARIABLE LABELS Q24 'Assinale Sim ou  N�o  se os seguintes  motivos te influenciaram a participar do Encceja: Conseguir uma vaga melhor no trabalho atual.'.
VALUE LABELS Q24
'A'  'Sim'
'B'  'N�o'.
VARIABLE LABELS Q25 'Assinale Sim ou  N�o  se os seguintes  motivos te influenciaram a participar do Encceja: Dar continuidade aos estudos.'.
VALUE LABELS Q25
'A'  'Sim'
'B'  'N�o'.
VARIABLE LABELS Q26 'Assinale Sim ou  N�o  se os seguintes  motivos te influenciaram a participar do Encceja: Obter um certificado oficial.'.
VALUE LABELS Q26
'A'  'Sim'
'B'  'N�o'.
VARIABLE LABELS Q27 'Assinale Sim ou  N�o  se os seguintes  motivos te influenciaram a participar do Encceja: Ter acesso ao mercado de trabalho formal.'.
VALUE LABELS Q27
'A'  'Sim'
'B'  'N�o'.
VARIABLE LABELS Q28 'Assinale  Sim  ou  N�o  se voc� realizou as seguintes atividades para participar do Encceja: Estudei sozinho sem suporte.'.
VALUE LABELS Q28
'A'  'Sim'
'B'  'N�o'.
VARIABLE LABELS Q29 'Assinale  Sim  ou  N�o  se voc� realizou as seguintes atividades para participar do Encceja: Fiz um curso com aulas online.'.
VALUE LABELS Q29
'A'  'Sim'
'B'  'N�o'.
VARIABLE LABELS Q30 'Assinale  Sim  ou  N�o  se voc� realizou as seguintes atividades para participar do Encceja: Frequentei uma turma de EJA.'.
VALUE LABELS Q30
'A'  'Sim'
'B'  'N�o'.
VARIABLE LABELS Q31 'Assinale  Sim  ou  N�o  se voc� realizou as seguintes atividades para participar do Encceja: Recebi ajuda de familiares e/ou amigos.'.
VALUE LABELS Q31
'A'  'Sim'
'B'  'N�o'.
VARIABLE LABELS Q32 'Indique o maior n�vel de escolaridade do seu pai:'.
VALUE LABELS Q32
'A'	'1� s�rie do ensino fundamental (antigo prim�rio, 1� grau)'
'B'	'2� s�rie do ensino fundamental (antigo prim�rio, 1� grau)'
'C'	'3� s�rie do ensino fundamental (antigo prim�rio, 1�grau)'
'D'	'4� s�rie do ensino fundamental (antigo prim�rio, 1� grau)'
'E'	'5� s�rie do ensino fundamental (antigo gin�sio, 1� grau)'
'F'	'6� s�rie do ensino fundamental (antigo gin�sio, 1� grau)'
'G'	'7� s�rie do ensino fundamental (antigo gin�sio, 1�grau)'
'H'	'8� s�rie do ensino fundamental (antigo gin�sio, 1� grau)'
'I'	'1� s�rie do ensino m�dio (antigo 2� grau)'
'J'	'2� s�rie do ensino m�dio (antigo 2� grau)'
'K'	'3� s�rie do ensino m�dio (antigo 2� grau)'
'L'	'Ensino Superior'
'M'	'P�s-Gradua��o'
'N'	'Ele nunca estudou.'
'O'	'N�o sei.'.
VARIABLE LABELS Q33 'Assinale o tipo de atividade do trabalho principal do seu pai:'.
VALUE LABELS Q33
'A'  'Agricultura, pecu�ria, produ��o florestal, pesca ou aquicultura'
'B'  'Banco, financeira ou imobili�ria'
'C'  'Com�rcio, repara��o de ve�culos automotores e motocicletas'
'D'  'Constru��o civil'
'E'  'Hotelaria ou alimenta��o'
'F'  'Ind�stria'
'G'  'No lar (sem remunera��o)'
'H'  'Profissional da defesa ou seguran�a'
'I'   'Profissional da educa��o, sa�de, seguridade social ou servi�os sociais'
'J'  'Servi�o administrativo ou secretariado'
'K'  'Servi�os dom�sticos em casa de outras pessoas'
'L'  'Tecnologia, informa��o e comunica��o'
'M'  'Trabalhador aut�nomo(pintor(a), eletricista, encanador(a) (Cf. Dic.)'
'N'  'Transporte, armazenagem e correio'
'O'  'Outros servi�os'
'P'  'N�o sei.'.
VARIABLE LABELS Q34 'Indique o maior n�vel de escolaridade da sua m�e:'.
VALUE LABELS Q34
'A'	'1� s�rie do ensino fundamental (antigo prim�rio, 1� grau)'
'B'	'2� s�rie do ensino fundamental (antigo prim�rio, 1� grau)'
'C'	'3� s�rie do ensino fundamental (antigo prim�rio, 1�grau)'
'D'	'4� s�rie do ensino fundamental (antigo prim�rio, 1� grau)'
'E'	'5� s�rie do ensino fundamental (antigo gin�sio, 1� grau)'
'F'	'6� s�rie do ensino fundamental (antigo gin�sio, 1� grau)'
'G'	'7� s�rie do ensino fundamental (antigo gin�sio, 1�grau)'
'H'	'8� s�rie do ensino fundamental (antigo gin�sio, 1� grau)'
'I'	'1� s�rie do ensino m�dio (antigo 2� grau)'
'J'	'2� s�rie do ensino m�dio (antigo 2� grau)'
'K'	'3� s�rie do ensino m�dio (antigo 2� grau)'
'L'	'Ensino Superior'
'M'	'P�s-Gradua��o'
'N'	'Ele nunca estudou.'
'O'	'N�o sei.'.
VARIABLE LABELS Q35 'Assinale o tipo de atividade do trabalho principal da sua m�e:'.
VALUE LABELS Q35
'A'  'Agricultura, pecu�ria, produ��o florestal, pesca ou aquicultura'
'B'  'Banco, financeira ou imobili�ria'
'C'  'Com�rcio, repara��o de ve�culos automotores e motocicletas'
'D'  'Constru��o civil'
'E'  'Hotelaria ou alimenta��o'
'F'  'Ind�stria'
'G'  'No lar (sem remunera��o)'
'H'  'Profissional da defesa ou seguran�a'
'I'   'Profissional da educa��o, sa�de, seguridade social ou servi�os sociais'
'J'  'Servi�o administrativo ou secretariado'
'K'  'Servi�os dom�sticos em casa de outras pessoas'
'L'  'Tecnologia, informa��o e comunica��o'
'M'  'Trabalhador aut�nomo(pintor(a), eletricista, encanador(a) (Cf. Dic.)'
'N'  'Transporte, armazenagem e correio'
'O'  'Outros servi�os'
'P'  'N�o sei.'.
VARIABLE LABELS Q36 'Voc� exerce um trabalho remunerado?'.
VALUE LABELS Q36
'A'  'Sim'
'B'  'N�o'.
VARIABLE LABELS Q37 'Assinale o tipo de v�nculo em seu trabalho principal:'.
VALUE LABELS Q37
'A'  'Formal (carteira assinada).'
'B'  'Informal (sem carteira assinada).'
'C'  'Militar ou funcion�rio p�blico estatut�rio.'
'D'  'Sem v�nculo, mas com rela��o de est�gio.'.
VARIABLE LABELS Q38 'Qual o setor do seu trabalho principal?'.
VALUE LABELS Q38
'A'  'Setor Privado'
'B'  'Setor P�blico'
'C'  'Trabalho Dom�stico'
'D'  'Trabalho em empresa familiar'
'E'  'Profissional Aut�nomo'
'F'  'Est�gio Profissionalizante'.
VARIABLE LABELS Q39 'Em que tipo de atividade � o seu trabalho principal?'.
VALUE LABELS Q39
'A'  'Agricultura, pecu�ria, produ��o florestal, pesca ou aquicultura'
'B'  'Banco, financeira ou imobili�ria'
'C'  'Com�rcio, repara��o de ve�culos automotores e motocicletas'
'D'  'Constru��o civil'
'E'  'Hotelaria ou alimenta��o'
'F'  'Ind�stria'
'G'  'No lar (sem remunera��o)'
'H'  'Profissional da defesa ou seguran�a'
'I'  'Profissional da educa��o, sa�de, seguridade social ou servi�os sociais'
'J'  'Servi�o administrativo ou secretariado'
'K'  'Servi�os dom�sticos em casa de outras pessoas'
'L'  'Tecnologia, informa��o e comunica��o'
'M'  'Trabalhador aut�nomo(pintor(a), eletricista, encanador(a) (Cf. Dic.)'
'N'  'Transporte, armazenagem e correio'
'O'  'Outros servi�os'.
VARIABLE LABELS Q40 'Quantas horas semanais voc� trabalha?'.
VALUE LABELS Q40
'A'  'Sem jornada fixa.'
'B'  'At� 10 horas semanais'
'C'  'De 11 a 20 horas semanais'
'D'  'De 21 a 30 horas semanais'
'E'  'De 31 a 40 horas semanais'
'F'  'At� 44 horas semanais'
'G'  'Acima de 44 horas semanais'.
VARIABLE LABELS Q41 'Qual a sua renda mensal, aproximadamente?'.
VALUE LABELS Q41
'A'	'Nenhuma renda.'
'B'	'At� 1 sal�rio m�nimo (at� R$ 1.212,00).'
'C'	'De 1 a 3 sal�rios m�nimos (de R$ 1.212,01 at� R$ 3.636,00).'
'D'	'De 3 a 6 sal�rios m�nimos (de R$ 3.636,01 at� R$7.272,00).'
'E'	'De 6 a 9 sal�rios m�nimos (de R$ 7.272,01 at� R$ 10.908,00).'
'F'	'De 9 a 12 sal�rios m�nimos (de R$ 10.908,01 at� R$ 14.544,00).'
'G'	'De 12 a 15 sal�rios m�nimos (de R$ 14.544,01 at� R$ 18.180,00).'
'H'	'Mais de 15 sal�rios m�nimos (mais de R$ 18.180,01).'.
VARIABLE LABELS Q42 'Somando a sua renda com a renda das pessoas que moram com voc�, quanto �, aproximadamente, a renda familiar mensal?'.
VALUE LABELS Q42
'A'	'Nenhuma renda.'
'B'	'At� 1 sal�rio m�nimo (at� R$ 1.212,00).'
'C'	'De 1 a 3 sal�rios m�nimos (de R$ 1.212,01 at� R$ 3.636,00).'
'D'	'De 3 a 6 sal�rios m�nimos (de R$ 3.636,01 at� R$7.272,00).'
'E'	'De 6 a 9 sal�rios m�nimos (de R$ 7.272,01 at� R$ 10.908,00).'
'F'	'De 9 a 12 sal�rios m�nimos (de R$ 10.908,01 at� R$ 14.544,00).'
'G'	'De 12 a 15 sal�rios m�nimos (de R$ 14.544,01 at� R$ 18.180,00).'
'H'	'Mais de 15 sal�rios m�nimos (mais de R$ 18.180,01).'.
VARIABLE LABELS Q43 'Voc� mora sozinho(a)?'.
VALUE LABELS Q43
'A'  'Sim'
'B'  'N�o'.
VARIABLE LABELS Q44 'No local em que voc� mora, quantas pessoas compartilham o mesmo ambiente para dormir?'.
VALUE LABELS Q44
'A'  'Uma pessoa por dormit�rio'
'B'  '2 a 3 pessoas'
'C'  '4 a 5 pessoas'
'D'  '6 a 7 pessoas'
'E'  'Mais de 7 pessoas'.
VARIABLE LABELS Q45 'O local onde voc� mora situa-se em:'.
VALUE LABELS Q45
'A'  'Zona rural.'
'B'  'Zona urbana.'.
VARIABLE LABELS Q46 'O local onde voc� mora �:'.
VALUE LABELS Q46
'A'  'Casa alugada.'
'B'  'Casa cedida.'
'C'  'Casa financiada.'
'D'  'Casa pr�pria.'
'E'  'Logradouro p�blico.'
'F'  'Unidade de acolhimento tempor�rio.'.
VARIABLE LABELS Q47 'Voc� � respons�vel por pagar o aluguel ou financiamento de sua casa?'.
VALUE LABELS Q47
'A'  'Sim, pago parte do valor'
'B'  'Sim, pago todo o valor'
'C'  'N�o'.
VARIABLE LABELS Q48 'Quanto da renda familiar � comprometido com o custeio da moradia?'.
VALUE LABELS Q48
'A'  '10% a 20%'
'B'  '21% a 30%'
'C'  'Mais de 30%'
'D'  'A renda familiar n�o � destinada ao custeio de moradia.'.
VARIABLE LABELS Q49 'Qual desses dispositivos eletr�nicos voc� usa mais em seu dia-a-dia?'.
VALUE LABELS Q49
'A'	'Aparelho celular.'
'B'	'Computador em casa.'
'C'	'Computador no trabalho.'
'D'	'Tablet.'
'E'	'Nenhum.'.
VARIABLE LABELS Q50 'Assinale  Sim  ou  N�o  se voc� costuma realizar as seguintes atividades ao usar seu dispositivo eletr�nico: Escrever e editar textos.'.
VALUE LABELS Q50
'A'  'Sim'
'B'  'N�o'.
VARIABLE LABELS Q51 'Assinale  Sim  ou  N�o  se voc� costuma realizar as seguintes atividades ao usar seu dispositivo eletr�nico: Elaborar apresenta��es.'.
VALUE LABELS Q51
'A'  'Sim'
'B'  'N�o'.
VARIABLE LABELS Q52 'Assinale  Sim  ou  N�o  se voc� costuma realizar as seguintes atividades ao usar seu dispositivo eletr�nico: Enviar e receber e-mails.'.
VALUE LABELS Q52
'A'  'Sim'
'B'  'N�o'.
VARIABLE LABELS Q53 'Assinale  Sim  ou  N�o  se voc� costuma realizar as seguintes atividades ao usar seu dispositivo eletr�nico: Editar fotos e/ou v�deos.'.
VALUE LABELS Q53
'A'  'Sim'
'B'  'N�o'.
VARIABLE LABELS Q54 'Assinale  Sim  ou  N�o  se voc� costuma realizar as seguintes atividades ao usar seu dispositivo eletr�nico: Fazer planilhas e tabelas.'.
VALUE LABELS Q54
'A'  'Sim'
'B'  'N�o'.
VARIABLE LABELS Q55 'Assinale  Sim  ou  N�o  se voc� costuma realizar as seguintes atividades ao usar seu dispositivo eletr�nico: Aprender novas habilidades.'.
VALUE LABELS Q55
'A'  'Sim'
'B'  'N�o'.
VARIABLE LABELS Q56 'Assinale  Sim  ou  N�o  se voc� costuma realizar as seguintes atividades ao usar seu dispositivo eletr�nico: Ouvir m�sicas e/ou assistir filmes.'.
VALUE LABELS Q56
'A'  'Sim'
'B'  'N�o'.
VARIABLE LABELS Q57 'Assinale  Sim  ou  N�o  se voc� costuma realizar as seguintes atividades ao usar seu dispositivo eletr�nico: Conhecer novas pessoas.'.
VALUE LABELS Q57
'A'  'Sim'
'B'  'N�o'.
VARIABLE LABELS Q58 'Assinale  Sim  ou  N�o  se voc� costuma realizar as seguintes atividades ao usar seu dispositivo eletr�nico: Buscar informa��es e not�cias atuais.'.
VALUE LABELS Q58
'A'  'Sim'
'B'  'N�o'.
VARIABLE LABELS Q59 'Com que frequ�ncia voc� acessa e-mails?'.
VALUE LABELS Q59
'A'  'De 1 a 2 vezes por semana'
'B'  'De 3 a 4  vezes por semana'
'C'  'Cinco vezes por semana'
'D'  'Diariamente'
'E'  'Raramente'.
VARIABLE LABELS Q60 'Voc� sabe usar computador?'.
VALUE LABELS Q60
'A'  'Sim'
'B'  'N�o'.
VARIABLE LABELS Q61 'N�o saber usar o computador j� prejudicou suas oportunidades profissionais?'.
VALUE LABELS Q61
'A'  'Sim'
'B'  'N�o'.
VARIABLE LABELS Q62 'Quais dessas oportunidades foram prejudicadas por voc� n�o saber usar o computador?'.
VALUE LABELS Q62
'A'  'Ganhar um aumento salarial'
'B'  'Participar de treinamentos na �rea.'
'C'  'Ser contratado'
'D'  'Ser promovido no trabalho'.