/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                */ 
/*                                   			                                       */
/*  Coordena��o-Geral de Instrumentos e Medidas							               */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*               INPUT_SAS_MICRODADOS_ENCCEJA_2020_REGULAR_NACIONAL	                   */
/*-------------------------------------------------------------------------------------*/
/* DESCRICAO: PROGRAMA PARA LEITURA DOS MICRODADOS DO ENCCEJA 2020- NACIONAL LIBERTOS  */
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

202003=	'Cinza (Ensino Fundamental)'
202007=	'Cinza - Ledor (Ensino Fundamental)'
202011=	'Branca (Ensino M�dio)'
202015=	'Branca - Ledor (Ensino M�dio)';

VALUE CO_PROVA_MT

202002=	'Amarela (Ensino Fundamental)'
202006=	'Amarela - Ledor  (Ensino Fundamental)'
202010=	'Amarela (Ensino M�dio)'
202014=	'Amarela - Ledor (Ensino M�dio)';

VALUE CO_PROVA_CN

202001=	'Rosa (Ensino Fundamental)'
202005=	'Rosa - Ledor (Ensino Fundamental)'
202009=	'Rosa (Ensino M�dio)'
202013=	'Rosa - Ledor (Ensino M�dio)';

VALUE CO_PROVA_CH

202004=	'Azul (Ensino Fundamental)'
202008=	'Azul  - Ledor (Ensino Fundamental)'
202012=	'Azul (Ensino M�dio)'
202016=	'Azul - Ledor (Ensino M�dio)';

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

VALUE $Q01_
'A'= 'Casado(a)'
'B'= 'Divorciado(a)'
'C'= 'Em uni�o est�vel'
'D'= 'Solteiro(a)'
'E'= 'Vi�vo(a)';

VALUE $Q02_
'A'= 'Sim'
'B'= 'N�o';

VALUE $Q03_
'A'= 'Um'
'B'= 'Dois'
'C'= 'Tr�s'
'D'= 'Quatro ou mais';

VALUE $Q04_
'A'= 'Sim, j� frequentei escola regular.'
'B'= 'Sim, estou frequentando escolar regular.'
'C'= 'N�o, nunca frequentei.';

VALUE $Q05_
'A'= '1� s�rie do ensino fundamental (antigo prim�rio, 1� grau)'
'B'= '2� s�rie do ensino fundamental (antigo prim�rio, 1� grau)'
'C'= '3� s�rie do ensino fundamental (antigo prim�rio, 1�grau)'
'D'= '4� s�rie do ensino fundamental (antigo prim�rio, 1� grau)'
'E'= '5� s�rie do ensino fundamental (antigo gin�sio, 1� grau)'
'F'= '6� s�rie do ensino fundamental (antigo gin�sio, 1� grau)'
'G'= '7� s�rie do ensino fundamental (antigo gin�sio, 1�grau)'
'H'= '8� s�rie do ensino fundamental (antigo gin�sio, 1� grau)'
'I'= '1� s�rie do ensino m�dio (antigo 2� grau)'
'J'= '2� s�rie do ensino m�dio (antigo 2� grau)'
'K'= '3� s�rie do ensino m�dio (antigo 2� grau)';

VALUE $Q06_
'A'= 'Menos de 10 anos de idade'
'B'= 'Entre 10 e 14 anos de idade'
'C'= 'Entre 15 e 17 anos de idade'
'D'= 'Mais de 17 anos de idade';

VALUE $Q07_
'A'= 'Sim'
'B'= 'N�o';

VALUE $Q08_
'A'= 'Sim'
'B'= 'N�o';

VALUE $Q09_
'A'= 'Sim'
'B'= 'N�o';

VALUE $Q10_
'A'= 'Sim'
'B'= 'N�o';

VALUE $Q11_
'A'= 'Sim'
'B'= 'N�o';

VALUE $Q12_
'A'= 'Sim'
'B'= 'N�o';

VALUE $Q13_
'A'= 'Sim'
'B'= 'N�o';

VALUE $Q14_
'A'= 'Sim'
'B'= 'N�o';

VALUE $Q15_
'A'= 'Sim'
'B'= 'N�o';

VALUE $Q16_
'A'= 'Sim'
'B'= 'N�o';

VALUE $Q17_
'A'= 'Sim'
'B'= 'N�o';

VALUE $Q18_
'A'= 'Sim'
'B'= 'N�o';

VALUE $Q19_
'A'= 'Sim'
'B'= 'N�o';

VALUE $Q20_
'A'= 'Sim'
'B'= 'N�o';

VALUE $Q21_
'A'= 'Comunidade ind�gena.'
'B'= 'Comunidade remanescente de quilombo.'
'C'= 'N�o fa�o parte de uma comunidade �tnico-racial.';

VALUE $Q22_
'A'= 'Sim'
'B'= 'N�o';

VALUE $Q23_
'A'= 'Sim'
'B'= 'N�o';

VALUE $Q24_
'A'= 'Sim'
'B'= 'N�o';

VALUE $Q25_
'A'= 'Sim'
'B'= 'N�o';

VALUE $Q26_
'A'= 'Sim'
'B'= 'N�o';

VALUE $Q27_
'A'= 'Sim'
'B'= 'N�o';

VALUE $Q28_
'A'= 'Sim'
'B'= 'N�o';

VALUE $Q29_
'A'= 'Sim'
'B'= 'N�o';

VALUE $Q30_
'A'= 'Sim'
'B'= 'N�o';

VALUE $Q31_
'A'= 'Sim'
'B'= 'N�o';

VALUE $Q32_
'A'= 'Sim'
'B'= 'N�o';

VALUE $Q33_
'A'= 'Completo.'
'B'= 'Incompleto.';

VALUE $Q34_
'A'= 'Completo.'
'B'= 'Incompleto.';

VALUE $Q35_
'A'= 'Completo.'
'B'= 'Incompleto.';

VALUE $Q36_
'A'= 'Completo.'
'B'= 'Incompleto.';

VALUE $Q37_
'A'= 'Estudou, mas n�o sei at� que n�vel.'
'B'= 'N�o estudou.';

VALUE $Q38_
'A'= 'Agricultura, pecu�ria, produ��o florestal, pesca ou aquicultura'
'B'= 'Banco, financeira ou imobili�ria'
'C'= 'Com�rcio, repara��o de ve�culos automotores e motocicletas'
'D'= 'Constru��o civil'
'E'= 'Hotelaria ou alimenta��o'
'F'= 'Ind�stria'
'G'= 'No lar (sem remunera��o)'
'H'= 'Profissional da defesa ou seguran�a'
'I'= 'Profissional da educa��o, sa�de, seguridade social ou servi�os sociais'
'J'= 'Servi�o administrativo ou secretariado'
'K'= 'Servi�os dom�sticos em casa de outras pessoas'
'L'= 'Tecnologia, informa��o e comunica��o'
'M'= 'Trabalhador aut�nomo(pintor(a), eletricista, encanador(a), feirante, ambulante, guardador(a) de carros, catador(a) de material recic�vel, artes�(o), carpinteiro(a), etc.)'
'N'= 'Transporte, armazenagem e correio'
'O'= 'Outros servi�os'
'P'= 'N�o sei.';

VALUE $Q39_
'A'= 'Completo.'
'B'= 'Incompleto.';

VALUE $Q40_
'A'= 'Completo.'
'B'= 'Incompleto.';

VALUE $Q41_
'A'= 'Completo.'
'B'= 'Incompleto.';

VALUE $Q42_
'A'= 'Completo.'
'B'= 'Incompleto.';

VALUE $Q43_
'A'= 'Estudou, mas n�o sei at� que n�vel.'
'B'= 'N�o estudou.';

VALUE $Q44_
'A'= 'Agricultura, pecu�ria, produ��o florestal, pesca ou aquicultura'
'B'= 'Banco, financeira ou imobili�ria'
'C'= 'Com�rcio, repara��o de ve�culos automotores e motocicletas'
'D'= 'Constru��o civil'
'E'= 'Hotelaria ou alimenta��o'
'F'= 'Ind�stria'
'G'= 'No lar (sem remunera��o)'
'H'= 'Profissional da defesa ou seguran�a'
'I'= 'Profissional da educa��o, sa�de, seguridade social ou servi�os sociais'
'J'= 'Servi�o administrativo ou secretariado'
'K'= 'Servi�os dom�sticos em casa de outras pessoas'
'L'= 'Tecnologia, informa��o e comunica��o'
'M'= 'Trabalhador aut�nomo(pintor(a), eletricista, encanador(a), feirante, ambulante, guardador(a) de carros, catador(a) de material recic�vel, artes�(o), carpinteiro(a), etc.)'
'N'= 'Transporte, armazenagem e correio'
'O'= 'Outros servi�os'
'P'= 'N�o sei.';

VALUE $Q45_
'A'= 'Sim'
'B'= 'N�o';

VALUE $Q46_
'A'= 'Formal (carteira assinada).'
'B'= 'Informal (sem carteira assinada).'
'C'= 'Militar ou funcion�rio p�blico estatut�rio.'
'D'= 'Sem v�nculo, mas com rela��o de est�gio.';

VALUE $Q47_
'A'= 'Setor Privado'
'B'= 'Setor P�blico'
'C'= 'Trabalho Dom�stico'
'D'= 'Trabalho em empresa familiar'
'E'= 'Profissional Aut�nomo'
'F'= 'Est�gio Profissionalizante';

VALUE $Q48_
'A'= 'Agricultura, pecu�ria, produ��o florestal, pesca ou aquicultura'
'B'= 'Banco, financeira ou imobili�ria'
'C'= 'Com�rcio, repara��o de ve�culos automotores e motocicletas'
'D'= 'Constru��o civil'
'E'= 'Hotelaria ou alimenta��o'
'F'= 'Ind�stria'
'G'= 'No lar (sem remunera��o)'
'H'= 'Profissional da defesa ou seguran�a'
'I'= 'Profissional da educa��o, sa�de, seguridade social ou servi�os sociais'
'J'= 'Servi�o administrativo ou secretariado'
'K'= 'Servi�os dom�sticos em casa de outras pessoas'
'L'= 'Tecnologia, informa��o e comunica��o'
'M'= 'Trabalhador aut�nomo(pintor(a), eletricista, encanador(a), feirante, ambulante, guardador(a) de carros, catador(a) de material recic�vel, artes�(o), carpinteiro(a), etc.)'
'N'= 'Transporte, armazenagem e correio'
'O'= 'Outros servi�os';

VALUE $Q49_
'A'= 'Sem jornada fixa.'
'B'= 'At� 10 horas semanais'
'C'= 'De 11 a 20 horas semanais'
'D'= 'De 21 a 30 horas semanais'
'E'= 'De 31 a 40 horas semanais'
'F'= 'At� 44 horas semanais'
'G'= 'Acima de 44 horas semanais';

VALUE $Q50_
'A'= 'At� 1 sal�rio m�nimo (at� R$ 1.045,00).'
'B'= 'De 1 a 3 sal�rios m�nimos (de R$ 1.045,01 at� R$ 3.135,00).'
'C'= 'De 3 a 6 sal�rios m�nimos (de R$ 3.135,01 at� R$6.270,00).'
'D'= 'De 6 a 9 sal�rios m�nimos (de R$ 6.270,01 at� R$ 9.405,00).'
'E'= 'De 9 a 12 sal�rios m�nimos (de R$ 9.405,01 at� R$ 12.540,00).'
'F'= 'De 12 a 15 sal�rios m�nimos (de R$ 12.540,01 at� R$ 15.675,00).'
'G'= 'Mais de 15 sal�rios m�nimos (mais de R$ 15.675,00).';

VALUE $Q51_
'A'= 'Nenhuma renda.'
'B'= 'At� 1 sal�rio m�nimo (at� R$ 1.045,00).'
'C'= 'De 1 a 3 sal�rios m�nimos (de R$ 1.045,01 at� R$ 3.135,00).'
'D'= 'De 3 a 6 sal�rios m�nimos (de R$ 3.135,01 at� R$6.270,00).'
'E'= 'De 6 a 9 sal�rios m�nimos (de R$ 6.270,01 at� R$ 9.405,00).'
'F'= 'De 9 a 12 sal�rios m�nimos (de R$ 9.405,01 at� R$ 12.540,00).'
'G'= 'De 12 a 15 sal�rios m�nimos (de R$ 12.540,01 at� R$ 15.675,00).'
'H'= 'Mais de 15 sal�rios m�nimos (mais de R$ 15.675,00).';

VALUE $Q52_
'A'= 'Sim'
'B'= 'N�o';

VALUE $Q53_
'A'= 'Uma pessoa por dormit�rio'
'B'= '2 a 3 pessoas'
'C'= '4 a 5 pessoas'
'D'= '6 a 7 pessoas'
'E'= 'Mais de 7 pessoas';

VALUE $Q54_
'A'= 'Zona rural.'
'B'= 'Zona urbana.';

VALUE $Q55_
'A'= 'Casa alugada.'
'B'= 'Casa cedida.'
'C'= 'Casa financiada.'
'D'= 'Casa pr�pria.'
'E'= 'Logradouro p�blico.'
'F'= 'Unidade de acolhimento tempor�rio.';

VALUE $Q56_
'A'= 'Sim, pago parte do valor'
'B'= 'Sim, pago todo o valor'
'C'= 'N�o';

VALUE $Q57_
'A'= '10% a 20%'
'B'= '21% a 30%'
'C'= 'Mais de 30%';

VALUE $Q58_
'A'= 'Sim'
'B'= 'N�o';

VALUE $Q59_
'A'= 'Sim'
'B'= 'N�o';

VALUE $Q60_
'A'= 'Sim'
'B'= 'N�o';

VALUE $Q61_
'A'= 'Sim'
'B'= 'N�o';

VALUE $Q62_
'A'= 'Sim'
'B'= 'N�o';

VALUE $Q63_
'A'= 'Sim'
'B'= 'N�o';

VALUE $Q64_
'A'= 'De 1 a 2 vezes por semana'
'B'= 'De 3 a 4  vezes por semana'
'C'= 'Cinco vezes por semana'
'D'= 'Diariamente'
'E'= 'Raramente';

VALUE $Q65_
'A'= 'Sim'
'B'= 'N�o';

VALUE $Q66_
'A'= 'Ganhar um aumento salarial'
'B'= 'Participar de treinamentos na �rea.'
'C'= 'Ser contratado'
'D'= 'Ser promovido no trabalho';


DATA ENCCEJA_REGULAR_NACIONAL;

INFILE 'C:\MICRODADOS_ENCCEJA_NACIONAL_REGULAR_2020.csv' /*Endere�o do arquivo em seu computador. Por exemplo: C:\arquivo.csv*/
        LRECL=700
        FIRSTOBS=2
        DLM=','
        MISSOVER
        DSD ;
    INPUT
        NU_INSCRICAO     : BEST21.
		NU_ANO		     : BEST4.
        TP_CERTIFICACAO  : BEST1.
        TP_FAIXA_ETARIA  : BEST2.
        TP_SEXO          : $CHAR1.
        CO_UF_PROVA      : BEST2.
        SG_UF_PROVA      : $CHAR2.
        NO_ENTIDADE_CERTIFICADORA : $CHAR111.
        IN_PROVA_LC      : BEST1.
        IN_PROVA_MT      : BEST1.
        IN_PROVA_CN      : BEST1.
        IN_PROVA_CH      : BEST1.
        TP_PRESENCA_LC   : BEST1.
        TP_PRESENCA_MT   : BEST1.
        TP_PRESENCA_CN   : BEST1.
        TP_PRESENCA_CH   : BEST1.
        CO_PROVA_LC      : BEST6.
        CO_PROVA_MT      : BEST6.
        CO_PROVA_CN      : BEST6.
        CO_PROVA_CH      : BEST6.
        NU_NOTA_LC       : BEST4.
        NU_NOTA_MT       : BEST4.
        NU_NOTA_CN       : BEST4.
        NU_NOTA_CH       : BEST4.
        IN_APROVADO_LC   : BEST1.
        IN_APROVADO_MT   : BEST1.
        IN_APROVADO_CN   : BEST1.
        IN_APROVADO_CH   : BEST1.
        TX_RESPOSTAS_LC  : $CHAR30.
        TX_RESPOSTAS_MT  : $CHAR30.
        TX_RESPOSTAS_CN  : $CHAR30.
        TX_RESPOSTAS_CH  : $CHAR30.
        TX_GABARITO_LC   : $CHAR30.
        TX_GABARITO_MT   : $CHAR30.
        TX_GABARITO_CN   : $CHAR30.
        TX_GABARITO_CH   : $CHAR30.
        TP_STATUS_REDACAO : BEST1.
        NU_NOTA_COMP1    : COMMA4.
        NU_NOTA_COMP2    : COMMA4.
        NU_NOTA_COMP3    : COMMA4.
        NU_NOTA_COMP4    : COMMA4.
        NU_NOTA_COMP5    : COMMA3.
        NU_NOTA_REDACAO  : COMMA4.
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
        Q48              : $CHAR1.
		Q49              : $CHAR1.
		Q50              : $CHAR1.
		Q51              : $CHAR1.
		Q52              : $CHAR1.
		Q53              : $CHAR1.
		Q54              : $CHAR1.
		Q55              : $CHAR1.
		Q56              : $CHAR1.
		Q57              : $CHAR1.
		Q58              : $CHAR1.
		Q59              : $CHAR1.
		Q60              : $CHAR1.
		Q61              : $CHAR1.
		Q62              : $CHAR1.
		Q63              : $CHAR1.
		Q64              : $CHAR1.
		Q65              : $CHAR1.
		Q66              : $CHAR1.;

ATTRIB NU_INSCRICAO   FORMAT=21.;
ATTRIB NU_ANO         FORMAT=4.;         
ATTRIB TP_CERTIFICACAO FORMAT=TP_CERTIFICACAO.;
ATTRIB TP_FAIXA_ETARIA FORMAT=TP_FAIXA_ETARIA.;       
ATTRIB TP_SEXO        FORMAT=$TP_SEXO.;        
ATTRIB CO_UF_PROVA     FORMAT=2.;
ATTRIB IN_PROVA_LC     FORMAT=IN_PROVA_LC.;     
ATTRIB IN_PROVA_MT     FORMAT=IN_PROVA_MT.;     
ATTRIB IN_PROVA_CN     FORMAT=IN_PROVA_CN.;     
ATTRIB IN_PROVA_CH     FORMAT=IN_PROVA_CH.;     
ATTRIB  TP_PRESENCA_LC  FORMAT=TP_PRESENCA_LC.;  
ATTRIB	TP_PRESENCA_MT FORMAT=TP_PRESENCA_MT.; 
ATTRIB	TP_PRESENCA_CN FORMAT=TP_PRESENCA_CN.; 
ATTRIB	TP_PRESENCA_CH FORMAT=TP_PRESENCA_CH.; 
ATTRIB	CO_PROVA_LC    FORMAT=CO_PROVA_LC.;    
ATTRIB	CO_PROVA_MT    FORMAT=CO_PROVA_MT.;    
ATTRIB	CO_PROVA_CN    FORMAT=CO_PROVA_CN.;    
ATTRIB	CO_PROVA_CH    FORMAT=CO_PROVA_CH.;    
ATTRIB	NU_NOTA_LC     FORMAT=4.;     
ATTRIB	NU_NOTA_MT     FORMAT=4.;     
ATTRIB	NU_NOTA_CN     FORMAT=4.;     
ATTRIB	NU_NOTA_CH     FORMAT=4.;     
ATTRIB	IN_APROVADO_LC FORMAT=IN_APROVADO_LC.; 
ATTRIB	IN_APROVADO_MT FORMAT=IN_APROVADO_MT.; 
ATTRIB	IN_APROVADO_CN FORMAT=IN_APROVADO_CN.; 
ATTRIB	IN_APROVADO_CH FORMAT=IN_APROVADO_CH.; 
ATTRIB	TP_STATUS_REDACAO FORMAT=TP_STATUS_REDACAO.;
ATTRIB	NU_NOTA_COMP1  FORMAT=4.2;
ATTRIB	NU_NOTA_COMP2  FORMAT=4.2;
ATTRIB	NU_NOTA_COMP3  FORMAT=4.2;
ATTRIB	NU_NOTA_COMP4  FORMAT=4.2;
ATTRIB	NU_NOTA_COMP5  FORMAT=4.2;
ATTRIB	NU_NOTA_REDACAO FORMAT=4.2;
ATTRIB	Q01           FORMAT=$Q01_.; 
ATTRIB	Q02           FORMAT=$Q02_.;
ATTRIB	Q03           FORMAT=$Q03_.; 
ATTRIB	Q04           FORMAT=$Q04_.; 
ATTRIB	Q05           FORMAT=$Q05_.; 
ATTRIB	Q06           FORMAT=$Q06_.; 
ATTRIB	Q07           FORMAT=$Q07_.; 
ATTRIB	Q08           FORMAT=$Q08_.; 
ATTRIB	Q09           FORMAT=$Q09_.; 
ATTRIB	Q10           FORMAT=$Q10_.; 
ATTRIB	Q11           FORMAT=$Q11_.; 
ATTRIB	Q12           FORMAT=$Q12_.; 
ATTRIB	Q13           FORMAT=$Q13_.; 
ATTRIB	Q14           FORMAT=$Q14_.;
ATTRIB	Q15           FORMAT=$Q15_.;
ATTRIB	Q16           FORMAT=$Q16_.; 
ATTRIB	Q17           FORMAT=$Q17_.; 
ATTRIB	Q18           FORMAT=$Q18_.; 
ATTRIB	Q19           FORMAT=$Q19_.; 
ATTRIB	Q20           FORMAT=$Q20_.; 
ATTRIB	Q21           FORMAT=$Q21_.; 
ATTRIB	Q22           FORMAT=$Q22_.;
ATTRIB	Q23           FORMAT=$Q23_.;
ATTRIB	Q24           FORMAT=$Q24_.;
ATTRIB	Q25           FORMAT=$Q25_.;
ATTRIB	Q26           FORMAT=$Q26_.;
ATTRIB	Q27           FORMAT=$Q27_.;
ATTRIB	Q28           FORMAT=$Q28_.; 
ATTRIB	Q29           FORMAT=$Q29_.; 
ATTRIB	Q30           FORMAT=$Q30_.;
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
ATTRIB	Q41           FORMAT=$Q41_.; 
ATTRIB	Q42           FORMAT=$Q42_.; 
ATTRIB	Q43           FORMAT=$Q43_.; 
ATTRIB	Q44           FORMAT=$Q44_.; 
ATTRIB	Q45           FORMAT=$Q45_.; 
ATTRIB	Q46           FORMAT=$Q46_.; 
ATTRIB	Q47           FORMAT=$Q47_.; 
ATTRIB	Q48           FORMAT=$Q48_.; 
ATTRIB	Q49           FORMAT=$Q49_.; 
ATTRIB	Q50           FORMAT=$Q50_.;		  
ATTRIB	Q51           FORMAT=$Q51_.;
ATTRIB	Q52           FORMAT=$Q52_.;
ATTRIB	Q53           FORMAT=$Q53_.;
ATTRIB	Q54           FORMAT=$Q54_.;
ATTRIB	Q55           FORMAT=$Q55_.;
ATTRIB	Q56           FORMAT=$Q56_.;
ATTRIB	Q57           FORMAT=$Q57_.;
ATTRIB	Q58           FORMAT=$Q58_.;
ATTRIB	Q59           FORMAT=$Q59_.;
ATTRIB	Q60           FORMAT=$Q60_.;
ATTRIB	Q61           FORMAT=$Q61_.;
ATTRIB	Q62           FORMAT=$Q62_.;
ATTRIB	Q63           FORMAT=$Q63_.;
ATTRIB	Q64           FORMAT=$Q64_.;
ATTRIB	Q65           FORMAT=$Q65_.;
ATTRIB	Q66           FORMAT=$Q66_.;

LABEL
NU_INSCRICAO= 'Campo com m�scara no n�mero de inscri��o do candidato.'
NU_ANO= 'Ano do Exame Encceja que est� em an�lise.'    
TP_CERTIFICACAO= 'Indicador do tipo de certifica��o pedida pelo participante.'
TP_FAIXA_ETARIA= 'Faixa et�ria do participante'         
TP_SEXO= 'Sexo do participante.'          
CO_UF_PROVA= 'C�digo da Unidade da Federa��o da aplica��o da prova'
SG_UF_PROVA= 'Sigla da Unidade da Federa��o da aplica��o da prova'
NO_ENTIDADE_CERTIFICADORA= 'Nome da Unidade Participante respons�vel pela certifica��o do exame.'
IN_PROVA_LC= 'Indica solicita��o de inscri��o do participante na prova de: L�ngua Portuguesa, L�ngua Estrangeira Moderna, Artes, Educa��o F�sica e Reda��o para os que solicitaram certifica��o do Ensino Fundamental; ou Linguagens e C�digos e suas Tecnologias(Cf. Dic.).'     
IN_PROVA_MT= 'Indica solicita��o de inscri��o do participante na prova de: Matem�tica para os que solicitaram certifica��o do Ensino Fundamental; ou Matem�tica e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'
IN_PROVA_CN= 'Indica solicita��o de inscri��o do participante na prova de: Ci�ncias Naturais para os que solicitaram certifica��o do Ensino Fundamental; ou Ci�ncias da Natureza e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'
IN_PROVA_CH= 'Indica solicita��o de inscri��o do participante na prova de: Hist�ria e Geografia para os que solicitaram certifica��o de Ensino Fundamental; ou Ci�ncias Humanas e suas Tecnologias para os solicitaram certifica��o do Ensino M�dio.'
TP_PRESENCA_LC= 'Indica a presen�a do participante na prova de: L�ngua Portuguesa, L�ngua Estrangeira Moderna, Artes, Educa��o F�sica e Reda��o para os que solicitaram certifica��o do Ensino Fundamental; ou Linguagens e C�digos e suas Tecnologias e Reda��o(Cf. Dic.).' 
TP_PRESENCA_MT= 'Indica a presen�a do participante na prova de: Matem�tica para os que solicitaram certifica��o do Ensino Fundamental; ou Matem�tica e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'
TP_PRESENCA_CN= 'Indica a presen�a do participante na prova de: Ci�ncias Naturais para os que solicitaram certifica��o do Ensino Fundamental; ou Ci�ncias da Natureza e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'
TP_PRESENCA_CH= 'Indica a presen�a do participante na prova de: Hist�ria e Geografia para os que solicitaram certifica��o de Ensino Fundamental; ou Ci�ncias Humanas e suas Tecnologias para os solicitaram certifica��o do Ensino M�dio.'
CO_PROVA_LC= 'C�digo da prova de: L�ngua Portuguesa, L�ngua Estrangeira Moderna, Artes, Educa��o F�sica e Reda��o para os que solicitaram certifica��o do Ensino Fundamental; ou Linguagens e C�digos e suas Tecnologias e Reda��o (Cf. Dic.).'      
CO_PROVA_MT= 'C�digo da prova de: Matem�tica para os que solicitaram certifica��o do Ensino Fundamental; ou Matem�tica e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'
CO_PROVA_CN= 'C�digo da prova de: Ci�ncias Naturais para os que solicitaram certifica��o do Ensino Fundamental; ou Ci�ncias da Natureza e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'
CO_PROVA_CH= 'C�digo da prova de: Hist�ria e Geografia para os que solicitaram certifica��o de Ensino Fundamental; ou Ci�ncias Humanas e suas Tecnologias para os solicitaram certifica��o do Ensino M�dio.'
NU_NOTA_LC= 'Nota da prova de: L�ngua Portuguesa, L�ngua Estrangeira Moderna, Artes, Educa��o F�sica e Reda��o para os que solicitaram certifica��o do Ensino Fundamental; ou Linguagens e C�digos e suas Tecnologias e Reda��o(Cf. Dic.).'
NU_NOTA_MT= 'Nota da prova de: Matem�tica para os que solicitaram certifica��o do Ensino Fundamental; ou Matem�tica e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'
NU_NOTA_CN= 'Nota da prova de: Ci�ncias Naturais para os que solicitaram certifica��o do Ensino Fundamental; ou Ci�ncias da Natureza e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'     
NU_NOTA_CH= 'Nota da prova de: Hist�ria e Geografia para os que solicitaram certifica��o de Ensino Fundamental; ou Ci�ncias Humanas e suas Tecnologias para os solicitaram certifica��o do Ensino M�dio.'
IN_APROVADO_LC= 'Indica se o participante foi aprovado na prova de: L�ngua Portuguesa, L�ngua Estrangeira Moderna, Artes, Educa��o F�sica e Reda��o para os que solicitaram certifica��o do Ensino Fundamental; ou Linguagens e C�digos e suas Tecnologias e Reda��o (Cf. Dic.).'
IN_APROVADO_MT= 'Indica se o participante foi aprovado na prova de: Matem�tica para os que solicitaram certifica��o do Ensino Fundamental; ou Matem�tica e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'
IN_APROVADO_CN= 'Indica se o participante foi aprovado na prova de: Ci�ncias Naturais para os que solicitaram certifica��o do Ensino Fundamental; ou Ci�ncias da Natureza e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'   
IN_APROVADO_CH= 'Indica se o participante foi aprovado na prova de: Hist�ria e Geografia para os que solicitaram certifica��o de Ensino Fundamental; ou Ci�ncias Humanas e suas Tecnologias para os solicitaram certifica��o do Ensino M�dio.'
TX_RESPOSTAS_LC= 'Vetor com as respostas da parte objetiva da prova de: L�ngua Portuguesa, L�ngua Estrangeira Moderna, Artes, Educa��o F�sica e Reda��o para os que solicitaram certifica��o do Ensino Fundamental; ou Linguagens e C�digos e suas Tecnologias e Red(Cf. Dic.).'
TX_RESPOSTAS_MT= 'Vetor com as respostas da parte objetiva da prova de: Matem�tica para os que solicitaram certifica��o do Ensino Fundamental; ou Matem�tica e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'
TX_RESPOSTAS_CN= 'Vetor com as respostas da parte objetiva da prova de: Ci�ncias Naturais para os que solicitaram certifica��o do Ensino Fundamental; ou Ci�ncias da Natureza e suas Tecnologias para os que solicitaram certifica��o do Ensino M�dio.'
TX_RESPOSTAS_CH= 'Vetor com as respostas da parte objetiva da prova de: Hist�ria e Geografia para os que solicitaram certifica��o de Ensino Fundamental; ou Ci�ncias Humanas e suas Tecnologias para os solicitaram certifica��o do Ensino M�dio.'
TX_GABARITO_LC= 'Vetor com o gabarito da parte objetiva da prova de: L�ngua Portuguesa, L�ngua Estrangeira Moderna, Artes, Educa��o F�sica e Reda��o para os que solicitaram certifica��o do Ensino Fundamental; ou Linguagens e C�digos e suas Tecnologias e Reda��o (Cf. Dic.).'
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
Q01= 'Qual o seu estado civil?'
Q02= 'Voc� tem filho(s) menor(es) de 18 anos de idade?'
Q03= 'Quantos filhos menores de 18 anos de idade voc� tem? (Marque apenas uma resposta)'
Q04= 'Voc� j� frequentou alguma vez a escola regular?'
Q05= 'Em que s�rie voc� parou de estudar? (Marque apenas uma resposta)'
Q06= 'Com quantos anos de idade voc� tinha quando deixou de frequentar a escola?'
Q07= 'Assinale  Sim ou N�o se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Exposi��o a situa��o de maus tratos na fam�lia.'
Q08= 'Assinale  Sim ou N�o se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Falta de apoio familiar.'
Q09= 'Assinale  Sim ou N�o se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Falta de escola perto de casa.'
Q10= 'Assinale  Sim ou N�o se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Falta de tempo para estudar.'
Q11= 'Assinale  Sim ou N�o se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Maternidade/paternidade na adolesc�ncia.'
Q12= 'Assinale  Sim ou N�o se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Necessidade de ajudar nas tarefas de casa.'
Q13= 'Assinale  Sim ou N�o se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Necessidade de trabalhar para ajudar a fam�lia.'
Q14= 'Assinale  Sim ou N�o se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Repetidas mudan�as de domic�lio.'
Q15= 'Assinale  Sim ou N�o se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Constante falta de professores.'
Q16= 'Assinale  Sim ou N�o se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Dificuldade de relacionamento com os professores.'
Q17= 'Assinale  Sim ou N�o se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Escola mal conservada e insegura.'
Q18= 'Assinale  Sim ou N�o se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Formas de ensino/avalia��o desestimulantes.'
Q19= 'Assinale  Sim ou N�o se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Inexist�ncia de vaga em escola p�blica.'
Q20= 'Assinale  Sim ou N�o se os seguintes  motivos te influenciaram a deixar de frequentar a escola: Percep��o de que os conte�dos das aulas n�o serviam para a vida.'
Q21= 'Assinale a seguir se voc� faz parte de uma comunidade �tnico-racial:'
Q22= 'Assinale Sim ou  N�o  se os seguintes  motivos te influenciaram a participar do Encceja: Acelerar os estudos.'
Q23= 'Assinale Sim ou  N�o  se os seguintes  motivos te influenciaram a participar do Encceja: Conquistar reconhecimento profissional.'
Q24= 'Assinale Sim ou  N�o  se os seguintes  motivos te influenciaram a participar do Encceja: Conseguir uma vaga melhor no trabalho atual.'
Q25= 'Assinale Sim ou  N�o  se os seguintes  motivos te influenciaram a participar do Encceja: Dar continuidade aos estudos.'
Q26= 'Assinale Sim ou  N�o  se os seguintes  motivos te influenciaram a participar do Encceja: Obter um certificado oficial.'
Q27= 'Assinale Sim ou  N�o  se os seguintes  motivos te influenciaram a participar do Encceja: Ter acesso ao mercado de trabalho formal.'
Q28= 'Assinale  Sim  ou  N�o  se voc� realizou as seguintes atividades para participar do Encceja: Estudei sozinho sem suporte.'
Q29= 'Assinale  Sim  ou  N�o  se voc� realizou as seguintes atividades para participar do Encceja: Fiz um curso com aulas online.'
Q30= 'Assinale  Sim  ou  N�o  se voc� realizou as seguintes atividades para participar do Encceja: Frequentei uma turma de EJA.'
Q31= 'Assinale  Sim  ou  N�o  se voc� realizou as seguintes atividades para participar do Encceja: Recebi ajuda de familiares e/ou amigos.'
Q32= 'Assinale  Sim  ou  N�o  se voc� realizou as seguintes atividades para participar do Encceja: N�o me preparei para o Encceja.'
Q33= 'Indique o n�vel de escolaridade do seu pai: Ensino Fundamental I (antigo prim�rio, da 1� � 4� s�rie)'
Q34= 'Indique o n�vel de escolaridade do seu pai: Ensino Fundamental II (antigo gin�sio, da 5� � 8� s�rie)'
Q35= 'Indique o n�vel de escolaridade do seu pai: Ensino M�dio (antigo 2� grau)'
Q36= 'Indique o n�vel de escolaridade do seu pai: Ensino Superior'
Q37= 'Indique o n�vel de escolaridade do seu pai: Outro.'
Q38= 'Assinale o tipo de atividade do trabalho principal do seu pai:'
Q39= 'Indique o n�vel de escolaridade da sua m�e: Ensino Fundamental I (antigo prim�rio, da 1� � 4� s�rie)'
Q40= 'Indique o n�vel de escolaridade da sua m�e: Ensino Fundamental II (antigo gin�sio, da 5� � 8� s�rie)'
Q41= 'Indique o n�vel de escolaridade da sua m�e: Ensino M�dio (antigo 2� grau)'
Q42= 'Indique o n�vel de escolaridade da sua m�e: Ensino Superior'
Q43= 'Indique o n�vel de escolaridade da sua m�e: Outro.'
Q44= 'Assinale o tipo de atividade do trabalho principal da sua m�e:'
Q45= 'Voc� exerce um trabalho remunerado?'
Q46= 'Assinale o tipo de v�nculo em seu trabalho principal:'
Q47= 'Qual o setor do seu trabalho principal?'
Q48= 'Em que tipo de atividade � o seu trabalho principal?'
Q49= 'Quantas horas semanais voc� trabalha?'
Q50= 'Qual a sua renda mensal, aproximadamente?'
Q51= 'Somando a sua renda com a renda das pessoas que moram com voc�, quanto �, aproximadamente, a renda familiar mensal?'
Q52= 'Voc� mora sozinho(a)?'
Q53= 'No local em que voc� mora, quantas pessoas compartilham o mesmo ambiente para dormir?'
Q54= 'O local onde voc� mora situa-se em:'
Q55= 'O local onde voc� mora �:'
Q56= 'Voc� � respons�vel por pagar o aluguel ou financiamento de sua casa?'
Q57= 'Quanto da renda familiar � comprometido com o custeio da moradia?'
Q58= 'Voc� sabe usar um computador?'
Q59= 'Assinale  Sim  ou  N�o  se voc� costuma realizar as seguintes atividades ao usar o computador: Escrever e editar textos.'
Q60= 'Assinale  Sim  ou  N�o  se voc� costuma realizar as seguintes atividades ao usar o computador: Elaborar apresenta��es.'
Q61= 'Assinale  Sim  ou  N�o  se voc� costuma realizar as seguintes atividades ao usar o computador: Enviar e receber e-mails.'
Q62= 'Assinale  Sim  ou  N�o  se voc� costuma realizar as seguintes atividades ao usar o computador: Fazer planilhas e tabelas.'
Q63= 'Assinale  Sim  ou  N�o  se voc� costuma realizar as seguintes atividades ao usar o computador: Navegar na internet.'
Q64= 'Com que frequ�ncia voc� acessa e-mails?'
Q65= 'N�o saber usar o computador j� prejudicou suas oportunidades profissionais?'
Q66= 'Quais dessas oportunidades foram prejudicadas por voc� n�o saber usar o computador?';

RUN;QUIT;



































































