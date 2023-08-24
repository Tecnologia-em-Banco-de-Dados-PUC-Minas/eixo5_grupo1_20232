/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                          */ 
/*                                   			                                    */
/*  Coordena��o-Geral de Instrumentos e Medidas (CGIM)			*/
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_INPUT_SAS_ITENS_PROVA_2019                                         */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DA BASE DE DADOS		*/
/* ITENS_PROVA_2019		   				*/
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados � necess�rio salvar este programa e o arquivo                    */
/* ITENS_PROVA_2019.csv no diret�rio C:\ do computador.		                  */
/*							 */ 
/*							 */
/* Para a leitura dos microdados � necess�rio a sele��o do programa abaixo,               */
/* depois execute-o.						 */
/*							 */ 
/******************************************************************************************************/
/*                                                   ATEN��O                                                          */ 
/******************************************************************************************************/
/* Este programa abre a base de dados com os r�tulos das vari�veis de	                    */
/* acordo com o dicion�rio de dados que comp�em os microdados. Para abrir                */
/* os dados sem os r�tulos basta importar diretamente no SPSS.		  */
/* 							   */
/*******************************************************************************************************/

GET DATA
  /TYPE=TXT
  /FILE="C:\MICRODADOS_ENCCEJA_ITENS_PROVA_2019.csv" /*local do arquivo*/
  /DELCASE=LINE
  /DELIMITERS=","
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE= ALL
  /VARIABLES=
CO_POSICAO F2.0
SG_AREA A2
CO_ITEM F5.0
TX_GABARITO A1
CO_HABILIDADE F2.0
CO_PROVA F6.0
IN_ITEM_ABAN F1.0
TX_MOTIVO_ABAN  A40
NU_PARAM_A COMMA8.5
NU_PARAM_B COMMA8.5
NU_PARAM_C COMMA8.5
TX_COR A7
TP_CERTIFICACAO F1.0       
IN_ITEM_ADAPTADO F1.0.
CACHE.
EXECUTE.
DATASET NAME ITENS_19 WINDOW=FRONT.

VARIABLE LABELS	CO_POSICAO	'Posi��o do Item na Prova'.
VARIABLE LABELS	SG_AREA		'�rea de Conhecimento do Item'.

VALUE LABELS SG_AREA
		'HG'	'Hist�ria e Geografia(EF)'
		'CI'	'Ci�ncias Naturais(EF)'
		'LP'	'L�ngua Portuguesa, L�ngua Estrangeira Moderna, Artes, Educa��o F�sica e Reda��o(EF)'
		'MA'	'Matem�tica(EF)'
		'CH'	'Ci�ncias Humanas(EM)'
		'CN'	'Ci�ncias da Natureza(EM)'
		'LC'	'Linguagens e C�digos(EM)'
		'MT'	'Matem�tica(EM)'.


VARIABLE LABELS	CO_ITEM		"C�digo do Item".
VARIABLE LABELS	TX_GABARITO	"Gabarito do Item".
VARIABLE LABELS	CO_HABILIDADE	"Habilidade do Item".
VARIABLE LABELS	CO_PROVA	"Identificador da Prova".
VALUE LABELS IN_ITEM_ABAN
		0	"N�o"
		1	"Sim".
VARIABLE LABELS	TX_MOTIVO_ABAN  	"Motivo para o abandono do item".
VARIABLE LABELS	NU_PARAM_A	"Par�metro de discrimina��o (a)".	
VARIABLE LABELS	NU_PARAM_B	"Par�metro de dificuldade (b)".
VARIABLE LABELS	NU_PARAM_C	"Par�metro de acerto ao acaso (c)".

VARIABLE LABELS	TX_COR		"Cor da Prova".
VARIABLE LABELS	TP_CERTIFICACAO	"Tipo de Certifica��o".
VARIABLE LABELS	IN_ITEM_ADAPTADO	"Item pertencente � prova adaptada".

VALUE LABELS TP_CERTIFICACAO
		1	"Ensino Fundamental"
		2	"Ensino M�dio".

VALUE LABELS IN_ITEM_ADAPTADO
		0	"N�o"
		1	"Sim".

