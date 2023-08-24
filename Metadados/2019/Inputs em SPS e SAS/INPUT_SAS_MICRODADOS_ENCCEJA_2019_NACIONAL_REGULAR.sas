/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                */ 
/*                                   			                                       */
/*  Coordena��o-Geral de Instrumentos e Medidas							               */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*               INPUT_SAS_MICRODADOS_ENCCEJA_2019_REGULAR_NACIONAL	                   */
/*-------------------------------------------------------------------------------------*/
/* DESCRICAO: PROGRAMA PARA LEITURA DOS MICRODADOS DO ENCCEJA 2019- NACIONAL LIBERTOS  */
/* COM DADOS DE CADASTRO, RESPOSTAS E QUESTION�RIO SOCIOECON�MICO					   */
/***************************************************************************************/
/***************************************************************************************/
/* Obs:                                                                                */
/* 		                                                                               */
/* Para abrir os microdados, � necess�rio salvar este programa e 					   */
/* o arquivo com os dados do ENCCEJA REGULAR NACIONAL		                           */
/* no diret�rio C:\ do computador.		                                   			   */
/*							                                                           */ 
/* Ao terminar esses procedimentos, execute o programa salvo utilizando                */
/* as vari�veis de interesse.                                                          */
/***************************************************************************************/
/*                                  ATEN��O                                            */ 
/***************************************************************************************/
/* Este programa abre a base de dados com os r�tulos das vari�veis de	               */
/* acordo com o dicion�rio de dados que comp�e os microdados. Para abrir               */
/* os dados sem os r�tulos, basta importar diretamente no SAS.                         */
/* 							                                                           */                                                           
/* Os R�tulos de algumas vari�veis n�o est�o completos em virtude do tamanho           */
/* dos enunciados das quest�es. Tais enunciados foram resumidos e indicados com o      */
/* seguinte c�digo: "(Cf. Dic.)". Essas quest�es exigem consulta ao Dicion�rio de      */
/* Vari�veis para conhecer o enunciado completo.                                       */
/* 							                                                           */                                                            
/***************************************************************************************/

PROC FORMAT;

VALUE  TP_FAIXA_ETARIA
1  = 'Menor de 17 anos'
2  = '17 anos'
3  = '18 anos'
4  = '19 anos'
5  = '20 anos'
6  = '21 anos'
7  = '22 anos'
8  = '23 anos'
9  = '24 anos'
10 = '25 anos'
11 = 'Entre 26 e 30 anos'
12 = 'Entre 31 e 35 anos'
13 = 'Entre 36 e 40 anos'
14 = 'Entre 41 e 45 anos'
15 = 'Entre 46 e 50 anos'
16 = 'Entre 51 e 55 anos'
17 = 'Entre 56 e 60 anos'
18 = 'Entre 61 e 65 anos'
19 = 'Entre 66 e 70 anos'
20 = 'Maior de 70 anos';

VALUE TP_CERTIFICACAO

1= 'Ensino Fundamental'
2= 'Ensino M�dio';

VALUE $TP_SEXO

F = 'Feminino'
M = 'Masculino';

VALUE IN_PROVA_LC

0= 'N�o'
1= 'Sim';

VALUE IN_PROVA_MT

0= 'N�o'
1= 'Sim';

VALUE IN_PROVA_CN

0= 'N�o'
1= 'Sim';

VALUE IN_PROVA_CH

0= 'N�o'
1= 'Sim';

VALUE TP_PRESENCA_LC

0=	'Faltou � prova'
1=	'Presente � prova'
2=	'Eliminado na prova'
3=	'Aplica��o n�o realizada';

VALUE TP_PRESENCA_MT

0=	'Faltou � prova'
1=	'Presente � prova'
2=	'Eliminado na prova'
3=	'Aplica��o n�o realizada';

VALUE TP_PRESENCA_CN

0=	'Faltou � prova'
1=	'Presente � prova'
2=	'Eliminado na prova'
3=	'Aplica��o n�o realizada';

VALUE TP_PRESENCA_CH

0=	'Faltou � prova'
1=	'Presente � prova'
2=	'Eliminado na prova'
3=	'Aplica��o n�o realizada';

VALUE CO_PROVA_LC

201903=	'Cinza (Ensino Fundamental)'
201907=	'Cinza - Ledor (Ensino Fundamental)'
201911=	'Branca (Ensino M�dio)'
201915=	'Branca - Ledor (Ensino M�dio)'
201947=	'Branca (Ensino M�dio - Reaplica��o)';

VALUE CO_PROVA_MT

201902=	'Amarela (Ensino Fundamental)'
201906=	'Amarela - Ledor  (Ensino Fundamental)'
201910=	'Amarela (Ensino M�dio)'
201914=	'Amarela - Ledor (Ensino M�dio)'
201946=	'Amarela (Ensino M�dio - Reaplica��o)';

VALUE CO_PROVA_CN

201901=	'Rosa (Ensino Fundamental)'
201905=	'Rosa - Ledor (Ensino Fundamental)'
201909=	'Rosa (Ensino M�dio)'
201913=	'Rosa - Ledor (Ensino M�dio)'
201941=	'Rosa (Ensino Fundamental - Reaplica��o)'
201945=	'Rosa (Ensino M�dio - Reaplica��o)';

VALUE CO_PROVA_CH

201904=	'Azul (Ensino Fundamental)'
201908=	'Azul  - Ledor (Ensino Fundamental)'
201912=	'Azul (Ensino M�dio)'
201916=	'Azul - Ledor (Ensino M�dio)'
201948=	'Azul (Ensino M�dio - Reaplica��o)';

VALUE IN_APROVADO_LC

0= 'N�o'
1= 'Sim';

VALUE IN_APROVADO_MT

0= 'N�o'
1= 'Sim';

VALUE IN_APROVADO_CN

0= 'N�o'
1= 'Sim';

VALUE IN_APROVADO_CH

0= 'N�o'
1= 'Sim';

VALUE TP_STATUS_REDACAO

1= 	'Sem problemas'
2=	'Anulada'
3=	'C�pia Texto Motivador'
4=	'Em Branco'
6=	'Fuga ao tema'
7=	'N�o atendimento ao tipo textual'
8=	'Texto insuficiente';

VALUE $Q01_

'A'=	'Moro sozinho'
'B'=	'Uma a tr�s'
'C'=	'Quatro a sete'
'D'=	'Oito a dez'
'E'=	'Mais de dez';

VALUE $Q02_

'A'=	'Pr�pria'
'B'=	'Alugada'
'C'=	'Cedida';

VALUE $Q03_

'A'=	'Zona rural'
'B'=	'Zona urbana'
'C'=	'Comunidade ind�gena'
'D'=	'Comunidade quilombola';

VALUE $Q04_

'A'=	'Da 1� � 4� s�rie do Ensino Fundamental (antigo prim�rio)'
'B'=	'Da 5� � 8� s�rie do Ensino Fundamental (antigo gin�sio)'
'C'=	'Ensino M�dio (antigo 2� grau)'
'D'=	'Ensino Superior'
'E'=	'Especializa��o'
'F'=	'N�o estudou'
'G'=	'N�o sei';

VALUE $Q05_

'A'=	'Da 1� � 4� s�rie do Ensino Fundamental (antigo prim�rio)'
'B'=	'Da 5� � 8� s�rie do Ensino Fundamental (antigo gin�sio)'
'C'=	'Ensino M�dio (antigo 2� grau)'
'D'=	'Ensino Superior'
'E'=	'Especializa��o'
'F'=	'N�o estudou'
'G'=	'N�o sei';

VALUE $Q06_

'A'=	'Nenhuma renda.'
'B'=	'At� 1 sal�rio m�nimo (at� R$ 954,00).'
'C'=	'(De 1 a 3 sal�rios m�nimos (de R$ 954,01 at� R$ 2.862,00).'
'D'=	'(De 3 a 6 sal�rios m�nimos (de R$ 2.862,01 at� R$ 5.724,00).'
'E'=	'De 6 a 9 sal�rios m�nimos (de R$ 5.724,01 at� R$ 8.586,00).'
'F'=	'De 9 a 12 sal�rios m�nimos (de R$ 8.586,01 at� R$ 11.448,00).'
'G'=	'De 12 a 15 sal�rios m�nimos (de R$ 11.448,01 at� R$ 14.310,00).'
'H'=	'Mais de 15 sal�rios m�nimos (mais de R$ 14.310,01).';

VALUE $Q07_

'A'=	'Nenhuma renda.'
'B'=	'At� 1 sal�rio m�nimo (at� R$ 954,00).'
'C'=	'(De 1 a 3 sal�rios m�nimos (de R$ 954,01 at� R$ 2.862,00).'
'D'=	'(De 3 a 6 sal�rios m�nimos (de R$ 2.862,01 at� R$ 5.724,00).'
'E'=	'De 6 a 9 sal�rios m�nimos (de R$ 5.724,01 at� R$ 8.586,00).'
'F'=	'De 9 a 12 sal�rios m�nimos (de R$ 8.586,01 at� R$ 11.448,00).'
'G'=	'De 12 a 15 sal�rios m�nimos (de R$ 11.448,01 at� R$ 14.310,00).'
'H'=	'Mais de 15 sal�rios m�nimos (mais de R$ 14.310,01).';

VALUE $Q08_

'A'=	'Sim'
'B'=	'N�o';

VALUE $Q09_

'A'=	'Na agricultura, no campo, na fazenda ou na pesca'
'B'=	'Na ind�stria'
'C'=	'Na constru��o civil'
'D'=	'No com�rcio, banco, transporte, hotelaria ou outros servi�os'
'E'=	'Como funcion�rio(a) do governo federal, estadual ou municipal'
'F'=	'Como profissional liberal, professora ou t�cnica de n�vel superior'
'G'=	'Trabalho fora de casa em atividades informais (pintor, eletricista, encanador, feirante, ambulante, guardador/a de carros, catador/a de lixo)'
'H'=	'Trabalho em minha casa informalmente (costura, aulas particulares, cozinha, artesanato, carpintaria etc.)'
'I'=	'Fa�o trabalho dom�stico em casa de outras pessoas (cozinheiro/a, mordomo/governanta, jardineiro, bab�, lavadeira, faxineiro/a, acompanhante de idosos/as etc.)'
'J'=	'No lar (sem remunera��o)'
'K'=	'Outro'
'L'=	'N�o trabalho';

VALUE $Q15_

'A'=	'Sem jornada fixa, at� 10 horas semanais'
'B'=	'De 11 a 20 horas semanais'
'C'=	'De 21 a 30 horas semanais'
'D'=	'De 31 a 40 horas semanais'
'E'=	'Mais de 40 horas semanais';

VALUE $Q16_

'A'=	'Antes dos 14 anos'
'B'=	'Entre 14 e 16 anos'
'C'=	'Entre 17 e 18 anos'
'D'=	'Ap�s 18 anos';

VALUE $Q17_

'A'=	'Atrapalhou meus estudos'
'B'=	'Possibilitou meus estudos'
'C'=	'Possibilitou meu crescimento pessoal'
'D'=	'N�o atrapalhou meus estudos';

VALUE $Q18_

'A'=	'N�o, nunca'
'B'=	'Sim, uma vez'
'C'=	'Sim, duas vezes'
'D'=	'Sim, tr�s vezes ou mais';

VALUE $Q19_

'A'=	'Conseguir um emprego'
'B'=	'Progredir no emprego atual'
'C'=	'Conseguir um emprego melhor'
'D'=	'Adquirir mais conhecimento, ficar atualizado'
'E'=	'Atender � expectativa de meus familiares sobre meus estudos'
'F'=	'N�o pretendo voltar a estudar';

VALUE $Q20_

'A'=	'N�o frequentei'
'B'=	'1� s�rie do ensino fundamental (antigo prim�rio, 1� grau)'
'C'=	'2� s�rie do ensino fundamental (antigo prim�rio, 1� grau)'
'D'=	'3� s�rie do ensino fundamental (antigo prim�rio, 1� grau)'
'E'=	'4� s�rie do ensino fundamental (antigo prim�rio, 1� grau)'
'F'=	'5� s�rie do ensino fundamental (antigo gin�sio, 1� grau)'
'G'=	'6� s�rie do ensino fundamental (antigo gin�sio, 1� grau)'
'H'=	'7� s�rie do ensino fundamental (antigo gin�sio, 1� grau)'
'I'=	'8� s�rie do ensino fundamental (antigo gin�sio, 1� grau)'
'J'=	'1� s�rie do ensino m�dio (antigo 2� grau)'
'K'=	'2� s�rie do ensino m�dio (antigo 2� grau)'
'L'=	'3� s�rie do ensino m�dio (antigo 2� grau)';

VALUE $Q21_

'A'=	'Nunca frequentei a escola'
'B'=	'Estou frequentando a escola'
'C'=	'Menos de 10 anos'
'D'=	'Entre 10 e 14 anos (inclusive)'
'E'=	'Entre 15 e 18 anos (inclusive)'
'F'=	'Entre 19 e 24 anos (inclusive)'
'G'=	'Entre 25 e 30 anos (inclusive)'
'H'=	'Mais de 30 anos';


VALUE $Q31_

'A'=	'Sim'
'B'=	'N�o';

VALUE $Q32_

'A'=	'Curso presencial em escola p�blica'
'B'=	'Curso presencial em escola privada'
'C'=	'Curso presencial na empresa em que trabalha, institui��o filantr�pica ou religiosa'
'D'=	'Curso a dist�ncia (via r�dio, televis�o, internet, correio, com apostilas)'
'E'=	'Curso semipresencial em escola p�blica'
'F'=	'Curso semipresencial em escola privada';

VALUE $Q33_

'A'=	'Sim'
'B'=	'N�o';

VALUE $Q34_

'A'=	'Sim'
'B'=	'N�o';

VALUE $Q35_

'A'=	'Sim'
'B'=	'N�o';

VALUE $Q36_

'A'=	'Sim'
'B'=	'N�o';

VALUE $Q37_

'A'=	'Sim'
'B'=	'N�o';

VALUE $Q38_

'A'=	'Sim'
'B'=	'N�o';

VALUE $Q39_

'A'=	'Sim'
'B'=	'N�o';

VALUE $Q40_

'A'=	'Sim'
'B'=	'N�o';

;
DATA ENCCEJA_REGULAR_NACIONAL;

INFILE 'C:\MICRODADOS_ENCCEJA_NACIONAL_REGULAR_2019.csv' /*Endere�o do arquivo em seu computador. Por exemplo: C:\arquivo.csv*/
        LRECL=586
        FIRSTOBS=2
        DLM=','
        MISSOVER
        DSD ;
    INPUT
        NU_INSCRICAO     : ?? BEST12.
		NU_ANO		     : ?? BEST4.
        TP_CERTIFICACAO  : ?? BEST1.
        TP_FAIXA_ETARIA  : ?? BEST2.
        TP_SEXO          : $CHAR1.
        CO_UF_PROVA      : ?? BEST2.
        SG_UF_PROVA      : $CHAR2.
        NO_ENTIDADE_CERTIFICADORA : $CHAR111.
        IN_PROVA_LC      : ?? BEST1.
        IN_PROVA_MT      : ?? BEST1.
        IN_PROVA_CN      : ?? BEST1.
        IN_PROVA_CH      : ?? BEST1.
        TP_PRESENCA_LC   : ?? BEST1.
        TP_PRESENCA_MT   : ?? BEST1.
        TP_PRESENCA_CN   : ?? BEST1.
        TP_PRESENCA_CH   : ?? BEST1.
        CO_PROVA_LC      : ?? BEST6.
        CO_PROVA_MT      : ?? BEST6.
        CO_PROVA_CN      : ?? BEST6.
        CO_PROVA_CH      : ?? BEST6.
        NU_NOTA_LC       : ?? BEST3.
        NU_NOTA_MT       : ?? BEST3.
        NU_NOTA_CN       : ?? BEST3.
        NU_NOTA_CH       : ?? BEST3.
        IN_APROVADO_LC   : ?? BEST1.
        IN_APROVADO_MT   : ?? BEST1.
        IN_APROVADO_CN   : ?? BEST1.
        IN_APROVADO_CH   : ?? BEST1.
        TX_RESPOSTAS_LC  : $CHAR30.
        TX_RESPOSTAS_MT  : $CHAR30.
        TX_RESPOSTAS_CN  : $CHAR30.
        TX_RESPOSTAS_CH  : $CHAR30.
        TX_GABARITO_LC   : $CHAR30.
        TX_GABARITO_MT   : $CHAR30.
        TX_GABARITO_CN   : $CHAR30.
        TX_GABARITO_CH   : $CHAR30.
        TP_STATUS_REDACAO : ?? BEST1.
        NU_NOTA_COMP1    : ?? COMMA4.
        NU_NOTA_COMP2    : ?? COMMA4.
        NU_NOTA_COMP3    : ?? COMMA4.
        NU_NOTA_COMP4    : ?? COMMA4.
        NU_NOTA_COMP5    : ?? COMMA3.
        NU_NOTA_REDACAO  : ?? COMMA4.
        Q01              : $CHAR1.
        Q02              : $CHAR1.
        Q03              : $CHAR1.
        Q04              : $CHAR1.
        Q05              : $CHAR1.
        Q06              : $CHAR1.
        Q07              : $CHAR1.
        Q08              : $CHAR1.
        Q09              : $CHAR1.
        Q10              : $CHAR1.
        Q11              : $CHAR1.
        Q12              : $CHAR1.
        Q13              : $CHAR1.
        Q14              : $CHAR1.
        Q15              : $CHAR1.
        Q16              : $CHAR1.
        Q17              : $CHAR1.
        Q18              : $CHAR1.
        Q19              : $CHAR1.
        Q20              : $CHAR1.
        Q21              : $CHAR1.
        Q22              : $CHAR1.
        Q23              : $CHAR1.
        Q24              : $CHAR1.
        Q25              : $CHAR1.
        Q26              : $CHAR1.
        Q27              : $CHAR1.
        Q28              : $CHAR1.
        Q29              : $CHAR1.
        Q30              : $CHAR1.
        Q31              : $CHAR1.
        Q32              : $CHAR1.
        Q33              : $CHAR1.
        Q34              : $CHAR1.
        Q35              : $CHAR1.
        Q36              : $CHAR1.
        Q37              : $CHAR1.
        Q38              : $CHAR1.
        Q39              : $CHAR1.
        Q40              : $CHAR1.
        Q41              : $CHAR1.
        Q42              : $CHAR1.
        Q43              : $CHAR1.
        Q44              : $CHAR1.
        Q45              : $CHAR1.
        Q46              : $CHAR1.
        Q47              : $CHAR1.
        Q48              : $CHAR1.;


ATTRIB TP_CERTIFICACAO FORMAT=TP_CERTIFICACAO.;
ATTRIB TP_FAIXA_ETARIA FORMAT=TP_FAIXA_ETARIA.;    
ATTRIB TP_SEXO        FORMAT=$TP_SEXO.;        
ATTRIB IN_PROVA_LC     FORMAT=IN_PROVA_LC.;     
ATTRIB IN_PROVA_MT     FORMAT=IN_PROVA_MT.;     
ATTRIB IN_PROVA_CN     FORMAT=IN_PROVA_CN.;     
ATTRIB IN_PROVA_CH     FORMAT=IN_PROVA_CH.;     
ATTRIB TP_PRESENCA_LC  FORMAT=TP_PRESENCA_LC.;  
ATTRIB	TP_PRESENCA_MT FORMAT=TP_PRESENCA_MT.; 
ATTRIB	TP_PRESENCA_CN FORMAT=TP_PRESENCA_CN.; 
ATTRIB	TP_PRESENCA_CH FORMAT=TP_PRESENCA_CH.; 
ATTRIB	CO_PROVA_LC    FORMAT=CO_PROVA_LC.;    
ATTRIB	CO_PROVA_MT    FORMAT=CO_PROVA_MT.;    
ATTRIB	CO_PROVA_CN    FORMAT=CO_PROVA_CN.;    
ATTRIB	CO_PROVA_CH    FORMAT=CO_PROVA_CH.;       
ATTRIB	IN_APROVADO_LC FORMAT=IN_APROVADO_LC.; 
ATTRIB	IN_APROVADO_MT FORMAT=IN_APROVADO_MT.; 
ATTRIB	IN_APROVADO_CN FORMAT=IN_APROVADO_CN.; 
ATTRIB	IN_APROVADO_CH FORMAT=IN_APROVADO_CH.; 
ATTRIB	TP_STATUS_REDACAO FORMAT=TP_STATUS_REDACAO.;
ATTRIB	Q01           FORMAT=$Q01_.; 
ATTRIB	Q02           FORMAT=$Q02_.;
ATTRIB	Q03           FORMAT=$Q03_.; 
ATTRIB	Q04           FORMAT=$Q04_.; 
ATTRIB	Q05           FORMAT=$Q05_.; 
ATTRIB	Q06           FORMAT=$Q06_.; 
ATTRIB	Q07           FORMAT=$Q07_.; 
ATTRIB	Q08           FORMAT=$Q08_.; 
ATTRIB	Q09           FORMAT=$Q09_.; 
ATTRIB	Q15           FORMAT=$Q15_.;
ATTRIB	Q16           FORMAT=$Q16_.; 
ATTRIB	Q17           FORMAT=$Q17_.; 
ATTRIB	Q18           FORMAT=$Q18_.; 
ATTRIB	Q19           FORMAT=$Q19_.; 
ATTRIB	Q20           FORMAT=$Q20_.; 
ATTRIB	Q21           FORMAT=$Q21_.; 
ATTRIB	Q31           FORMAT=$Q31_.; 
ATTRIB	Q32           FORMAT=$Q32_.; 
ATTRIB	Q33           FORMAT=$Q33_.; 
ATTRIB	Q34           FORMAT=$Q34_.; 
ATTRIB	Q35           FORMAT=$Q35_.; 
ATTRIB	Q36           FORMAT=$Q36_.; 
ATTRIB	Q37           FORMAT=$Q37_.; 
ATTRIB	Q38           FORMAT=$Q38_.; 
ATTRIB	Q39           FORMAT=$Q39_.; 
ATTRIB	Q40           FORMAT=$Q40_.; 

LABEL

NU_INSCRICAO= 'Campo com m�scara no n�mero de inscri��o do candidato.'
NU_ANO= 'Ano do Exame Encceja que est� em an�lise.'    
TP_CERTIFICACAO= 'Indicador do tipo de certifica��o pedida pelo participante.'
TP_FAIXA_ETARIA= 'Faixa et�ria do participante conforme idade em 31 de dezembro do ano do exame.'         
TP_SEXO= 'Sexo do participante.'          
CO_UF_PROVA= 'C�digo da Unidade da Federa��o da aplica��o da prova'
SG_UF_PROVA= 'Sigla da Unidade da Federa��o da aplica��o da prova'
NO_ENTIDADE_CERTIFICADORA= 'Nome da Unidade Participante respons�vel pela certifica��o do exame.'
IN_PROVA_LC= 'Indica solicita��o de inscri��o do participante na prova de: L�ngua Portuguesa, L�ngua Estrangeira Moderna, Artes, Educa��o F�sica e Reda��o para os que solicitaram certifica��o do Ensino Fundamental; ou Linguagens e C�digos e suas Tecnologias e Reda��o para os que solicitaram certifica��o do Ensino M�dio.'     
IN_PROVA_MT= 'Indica solicita��o de inscri��o do participante na prova de: Matem�tica para os que solicitaram certifica��o do Ensino Fundamental; ou Matem�tica e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'
IN_PROVA_CN= 'Indica solicita��o de inscri��o do participante na prova de: Ci�ncias Naturais para os que solicitaram certifica��o do Ensino Fundamental; ou Ci�ncias da Natureza e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'
IN_PROVA_CH= 'Indica solicita��o de inscri��o do participante na prova de: Hist�ria e Geografia para os que solicitaram certifica��o de Ensino Fundamental; ou Ci�ncias Humanas e suas Tecnologias para os solicitaram certifica��o do Ensino M�dio.'
TP_PRESENCA_LC= 'Indica a presen�a do participante na prova de: L�ngua Portuguesa, L�ngua Estrangeira Moderna, Artes, Educa��o F�sica e Reda��o para os que solicitaram certifica��o do Ensino Fundamental; ou Linguagens e C�digos e suas Tecnologias e Reda��o para os que solicitaram certifica��o do Ensino M�dio.' 
TP_PRESENCA_MT= 'Indica a presen�a do participante na prova de: Matem�tica para os que solicitaram certifica��o do Ensino Fundamental; ou Matem�tica e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'
TP_PRESENCA_CN= 'Indica a presen�a do participante na prova de: Ci�ncias Naturais para os que solicitaram certifica��o do Ensino Fundamental; ou Ci�ncias da Natureza e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'
TP_PRESENCA_CH= 'Indica a presen�a do participante na prova de: Hist�ria e Geografia para os que solicitaram certifica��o de Ensino Fundamental; ou Ci�ncias Humanas e suas Tecnologias para os solicitaram certifica��o do Ensino M�dio.'
CO_PROVA_LC= 'C�digo da prova de: L�ngua Portuguesa, L�ngua Estrangeira Moderna, Artes, Educa��o F�sica e Reda��o para os que solicitaram certifica��o do Ensino Fundamental; ou Linguagens e C�digos e suas Tecnologias e Reda��o para os que solicitaram certifica��o do Ensino M�dio.'      
CO_PROVA_MT= 'C�digo da prova de: Matem�tica para os que solicitaram certifica��o do Ensino Fundamental; ou Matem�tica e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'
CO_PROVA_CN= 'C�digo da prova de: Ci�ncias Naturais para os que solicitaram certifica��o do Ensino Fundamental; ou Ci�ncias da Natureza e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'
CO_PROVA_CH= 'C�digo da prova de: Hist�ria e Geografia para os que solicitaram certifica��o de Ensino Fundamental; ou Ci�ncias Humanas e suas Tecnologias para os solicitaram certifica��o do Ensino M�dio.'
NU_NOTA_LC= 'Nota da prova de: L�ngua Portuguesa, L�ngua Estrangeira Moderna, Artes, Educa��o F�sica e Reda��o para os que solicitaram certifica��o do Ensino Fundamental; ou Linguagens e C�digos e suas Tecnologias e Reda��o para os que solicitaram certifica��o do Ensino M�dio.'
NU_NOTA_MT= 'Nota da prova de: Matem�tica para os que solicitaram certifica��o do Ensino Fundamental; ou Matem�tica e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'
NU_NOTA_CN= 'Nota da prova de: Ci�ncias Naturais para os que solicitaram certifica��o do Ensino Fundamental; ou Ci�ncias da Natureza e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'     
NU_NOTA_CH= 'Nota da prova de: Hist�ria e Geografia para os que solicitaram certifica��o de Ensino Fundamental; ou Ci�ncias Humanas e suas Tecnologias para os solicitaram certifica��o do Ensino M�dio.'
IN_APROVADO_LC= 'Indica se o participante foi aprovado na prova de: L�ngua Portuguesa, L�ngua Estrangeira Moderna, Artes, Educa��o F�sica e Reda��o para os que solicitaram certifica��o do Ensino Fundamental; ou Linguagens e C�digos e suas Tecnologias e Reda��o para os que solicitaram certifica��o do Ensino M�dio.'
IN_APROVADO_MT= 'Indica se o participante foi aprovado na prova de: Matem�tica para os que solicitaram certifica��o do Ensino Fundamental; ou Matem�tica e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'
IN_APROVADO_CN= 'Indica se o participante foi aprovado na prova de: Ci�ncias Naturais para os que solicitaram certifica��o do Ensino Fundamental; ou Ci�ncias da Natureza e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'   
IN_APROVADO_CH= 'Indica se o participante foi aprovado na prova de: Hist�ria e Geografia para os que solicitaram certifica��o de Ensino Fundamental; ou Ci�ncias Humanas e suas Tecnologias para os solicitaram certifica��o do Ensino M�dio.'
TX_RESPOSTAS_LC= 'Vetor com as respostas da parte objetiva da prova de: L�ngua Portuguesa, L�ngua Estrangeira Moderna, Artes, Educa��o F�sica e Reda��o para os que solicitaram certifica��o do Ensino Fundamental; ou Linguagens e C�digos e suas Tecnologias e Reda��o para os que solicitaram certifica��o do Ensino M�dio.'
TX_RESPOSTAS_MT= 'Vetor com as respostas da parte objetiva da prova de: Matem�tica para os que solicitaram certifica��o do Ensino Fundamental; ou Matem�tica e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'
TX_RESPOSTAS_CN= 'Vetor com as respostas da parte objetiva da prova de: Ci�ncias Naturais para os que solicitaram certifica��o do Ensino Fundamental; ou Ci�ncias da Natureza e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'
TX_RESPOSTAS_CH= 'Vetor com as respostas da parte objetiva da prova de: Hist�ria e Geografia para os que solicitaram certifica��o de Ensino Fundamental; ou Ci�ncias Humanas e suas Tecnologias para os solicitaram certifica��o do Ensino M�dio.'
TX_GABARITO_LC= 'Vetor com o gabarito da parte objetiva da prova de: L�ngua Portuguesa, L�ngua Estrangeira Moderna, Artes, Educa��o F�sica e Reda��o para os que solicitaram certifica��o do Ensino Fundamental; ou Linguagens e C�digos e suas Tecnologias e Reda��o para os que solicitaram certifica��o do Ensino M�dio.'
TX_GABARITO_MT= 'Vetor com o gabarito da parte objetiva da prova de: Matem�tica para os que solicitaram certifica��o do Ensino Fundamental; ou Matem�tica e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'  
TX_GABARITO_CN= 'Vetor com o gabarito da parte objetiva da prova de: Ci�ncias Naturais para os que solicitaram certifica��o do Ensino Fundamental; ou Ci�ncias da Natureza e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'
TX_GABARITO_CH= 'Vetor com o gabarito da parte objetiva da prova de: Hist�ria e Geografia para os que solicitaram certifica��o de Ensino Fundamental; ou Ci�ncias Humanas e suas Tecnologias para os solicitaram certifica��o do Ensino M�dio.'  
TP_STATUS_REDACAO= 'Situa��o da reda��o do participante'
NU_NOTA_COMP1= 'Nota da compet�ncia 1 - Demonstrar dom�nio da modalidade escrita formal da L�ngua Portuguesa.' 
NU_NOTA_COMP2= 'Nota da compet�ncia 2 - Compreender a proposta de reda��o e aplicar conceitos das v�rias �reas de conhecimento para desenvolver o tema, dentro dos limites estruturais do texto dissertativo-argumentativo em prosa.'
NU_NOTA_COMP3= 'Nota da compet�ncia 3 - Selecionar, relacionar, organizar e interpretar informa��es, fatos, opini�es e argumentos em defesa de um ponto de vista.'
NU_NOTA_COMP4= 'Nota da compet�ncia 4 - Demonstrar conhecimento dos mecanismos lingu�sticos necess�rios para a constru��o da argumenta��o.'   
NU_NOTA_COMP5= 'Nota da compet�ncia 5 - Elaborar proposta de interven��o para o problema abordado, respeitando os direitos humanos. Essa nota ser� atribu�da apenas para os participantes que solicitaram certifica��o de Ensino M�dio.'
NU_NOTA_REDACAO= 'Nota da prova de reda��o.'
Q01= 'Quantas pessoas moram com voc�? (incluindo filhos, irm�os, parentes e amigos)'
Q02= 'A casa onde voc� mora �? (Marque apenas uma resposta)'
Q03= 'Sua casa est� localizada em? (Marque apenas uma resposta)'
Q04= 'Qual � o n�vel de escolaridade do seu pai? (Marque apenas uma resposta)'
Q05= 'Qual � o n�vel de escolaridade da sua m�e? (Marque apenas uma resposta)'
Q06= 'Somando a sua renda com a renda das pessoas que moram com voc�, quanto �, aproximadamente, a renda familiar mensal? (Marque apenas uma resposta)'
Q07= 'Qual a sua renda mensal, aproximadamente? (Marque apenas uma resposta)'
Q08= 'Voc� trabalha ou j� trabalhou? (Marque apenas uma resposta)'
Q09= ' Em que voc� trabalha atualmente? (Marque apenas uma resposta)'
Q10= ' Indique o grau de import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar: Ajudar nas despesas com a casa'
Q11= ' Indique o grau de import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar: Sustentar minha fam�lia (esposo/a, filhos/as etc.)'
Q12= ' Indique o grau de import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar: Ser independente (ganhar meu pr�prio dinheiro)'
Q13= ' Indique o grau de import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar: Adquirir experi�ncia'
Q14= ' Indique o grau de import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar: Custear/ pagar meus estudos'
Q15= ' Quantas horas semanais voc� trabalha? (Marque apenas uma resposta)'
Q16= ' Com que idade voc� come�ou a trabalhar? (Marque apenas uma resposta)'
Q17= ' Como voc� avalia ter estudado e trabalhado durante seus estudos? (Marque apenas uma resposta)'
Q18= ' Voc� j� reprovou alguma vez? (Marque apenas uma resposta)'
Q19= ' Qual principal motivo faria voc� voltar a estudar ou continuar estudando? (Marque apenas uma resposta)'
Q20= ' Se voc� j� frequentou a escola regular, em que s�rie voc� deixou de estudar? (Marque apenas uma resposta)'
Q21= ' Se voc� deixou de frequentar a escola regular, quantos anos voc� tinha? (Marque apenas uma resposta)'
Q22= ' Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA: Para conseguir o certificado de conclus�o do Ensino Fundamental ou M�dio'
Q23= ' Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA: Porque parentes, amigos(as) e professores(as) me recomendaram'
Q24= ' Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA: Para continuar meus estudos'
Q25= ' Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA: Porque n�o posso estudar'
Q26= ' Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA: Porque n�o quero ou n�o gosto de estudar'
Q27= ' Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA: Por que � a melhor maneira para conciliar meus estudos e trabalho'
Q28= ' Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA: Para conseguir um emprego'
Q29= ' Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA: Para fazer curso profissionalizante e me preparar para o trabalho'
Q30= ' Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA: Para progredir no emprego atual'
Q31= ' Voc� cursa ou j� cursou a Educa��o de Jovens e Adultos � EJA? (Marque apenas uma resposta)'
Q32= ' Como � ou era o curso de EJA que voc� frequenta ou frequentou? (Marque apenas uma resposta)'
Q33= ' Caso tenha deixado de cursar a EJA indique o(s) motivos(s)? N�o se aplica'
Q34= ' Caso tenha deixado de cursar a EJA indique o(s) motivos(s)? Trabalho/ n�o tinha tempo de estudar'
Q35= ' Caso tenha deixado de cursar a EJA indique o(s) motivos(s)? Estudava no curso da empresa e foi interrompido'
Q36= ' Caso tenha deixado de cursar a EJA indique o(s) motivos(s)? Problemas de sa�de ou acidentes comigo ou familiares'
Q37= ' Caso tenha deixado de cursar a EJA indique o(s) motivos(s)? Mudan�a de estado, munic�pio ou cidade'
Q38= ' Caso tenha deixado de cursar a EJA indique o(s) motivos(s)? Motivos pessoais: casamento / filhos'
Q39= ' Caso tenha deixado de cursar a EJA indique o(s) motivos(s)? N�o tinha interesse / desisti'
Q40= ' Caso tenha deixado de cursar a EJA indique o(s) motivos(s)? Senti-me discriminado(a) / Sofri agress�o (f�sica ou verbal)'
Q41= ' Em que medida os motivos a seguir influenciaram no fato de voc� n�o ter frequentado ou ter abandonado a escola regular: Inexist�ncia de vaga em escola p�blica'
Q42= ' Em que medida os motivos a seguir influenciaram no fato de voc� n�o ter frequentado ou ter abandonado a escola regular: Aus�ncia de escola perto de casa'
Q43= ' Em que medida os motivos a seguir influenciaram no fato de voc� n�o ter frequentado ou ter abandonado a escola regular: Falta de interesse em estudar'
Q44= ' Em que medida os motivos a seguir influenciaram no fato de voc� n�o ter frequentado ou ter abandonado a escola regular:  Trabalho - falta de tempo para estudar'
Q45= ' Em que medida os motivos a seguir influenciaram no fato de voc� n�o ter frequentado ou ter abandonado a escola regular:  Motivos pessoais - casamento / filhos'
Q46= ' Em que medida os motivos a seguir influenciaram no fato de voc� n�o ter frequentado ou ter abandonado a escola regular: Falta de apoio familiar'
Q47= ' Em que medida os motivos a seguir influenciaram no fato de voc� n�o ter frequentado ou ter abandonado a escola regular: Problemas de sa�de ou acidente comigo ou familiares'
Q48= ' Em que medida os motivos a seguir influenciaram no fato de voc� n�o ter frequentado ou ter abandonado a escola regular: Discrimina��o/preconceitos de ra�a, sexo, cor, idade ou socioecon�mico'
;
RUN;QUIT;