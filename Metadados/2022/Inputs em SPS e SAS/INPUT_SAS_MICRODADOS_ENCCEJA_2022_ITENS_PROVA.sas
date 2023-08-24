/**************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica              	  */      
/*                                   									  */	
/*  Coordena��o-Geral de Medidas da Educa��o B�sica (CGMEB)				  */
/*------------------------------------------------------------------------*/
/*  PROGRAMA:                                                             */
/*           INPUT_SAS_MICRODADOS_ENCCEJA_2022_ITENS_PROVA.sas	          */
/*------------------------------------------------------------------------*/
/*  DESCRICAO: PROGRAMA PARA LEITURA DOS ITENS DAS PROVAS DO ENCCEJA 2022 */    
/*                                                                        */
/**************************************************************************/
/**************************************************************************/
/* Obs:                                                                   */
/* 		                                                                  */
/* Para abrir os microdados � necess�rio salvar este programa e o arquivo */
/* MICRODADOS_ENCCEJA_2022_ITENS_PROVA.CSV no diret�rio C:\ do computador.*/
/*															 			  */                                           
/* Ao terminar esses procedimentos execute o programa salvo utilizando    */
/* as vari�veis de interesse.                                             */
/**************************************************************************/
/*				                  ATEN��O                                 */  
/**************************************************************************/
/* Este programa abre a base de dados com os r�tulos das vari�veis de	  */
/* acordo com o dicion�rio de dados que comp�em os microdados. Para abrir */
/* os dados sem os r�tulos basta importar diretamente no SAS.			  */
/* 																	      */ 																          
/**************************************************************************/

PROC FORMAT;

VALUE TP_PROVA
		1='Nacional Regular'
		2='Nacional PPL'
		3='Nacional Reaplica��o'
		4='Exterior Regular'
		5='Exterior PPL e Reaplica��o';

VALUE $SG_AREA
		HG='Hist�ria e Geografia(EF)'
		CI='Ci�ncias Naturais(EF)'
		LP='L�ngua Portuguesa, L�ngua Estrangeira Moderna, Artes, Educa��o F�sica e Reda��o(EF)'
		MA='Matem�tica(EF)'
		CH='Ci�ncias Humanas(EM)'
		CN='Ci�ncias da Natureza(EM)'
		LC='Linguagens e C�digos(EM)'
		MT='Matem�tica(EM)';

VALUE TP_CERTIFICACAO
		1='Ensino Fundamental'
		2='Ensino M�dio';

VALUE IN_ITEM_ADAPTADO
		0='N�o'
		1='Sim';

VALUE IN_ITEM_ABAN
		0='N�o'
		1='Sim';

DATA WORK.ITENS_PROVA_2022;
INFILE 'C:\MICRODADOS_ENCCEJA_2022_ITENS_PROVA.csv' /*Endere�o do arquivo em seu computador. Por exemplo: C:\arquivo.csv*/
        LRECL=100
        FIRSTOBS=2
        DLM=';'
        MISSOVER
        DSD ;

INPUT
		TP_PROVA		 : ?? BEST1.
		CO_POSICAO       : ?? BEST2.
        SG_AREA          : $CHAR2.
        CO_ITEM          : ?? BEST5.
        TX_GABARITO      : $CHAR1.
        CO_HABILIDADE    : $CHAR3.
        CO_PROVA         : ?? BEST6.
		IN_ITEM_ABAN	 : ?? BEST1.
		TX_MOTIVO_ABAN   : $CHAR40.
		NU_PARAM_A		 : BEST8.
		NU_PARAM_B		 : BEST8.
		NU_PARAM_C		 : BEST8.
        TX_COR           : $CHAR15.
        TP_CERTIFICACAO  : ?? BEST1.
        IN_ITEM_ADAPTADO : ?? BEST1.;

ATTRIB	TP_PROVA		 FORMAT = TP_PROVA.;
ATTRIB  SG_AREA          FORMAT = $SG_AREA.;         
ATTRIB  TP_CERTIFICACAO  FORMAT = TP_CERTIFICACAO.;       
ATTRIB  IN_ITEM_ADAPTADO FORMAT = IN_ITEM_ADAPTADO.;
ATTRIB  IN_ITEM_ABAN	 FORMAT = IN_ITEM_ABAN.;

LABEL
TP_PROVA='Tipo da Prova'
CO_POSICAO='Posi��o do Item na Prova'
SG_AREA='�rea de Conhecimento do Item'
CO_ITEM='C�digo do Item'
TX_GABARITO='Gabarito do Item'
CO_HABILIDADE='Habilidade do Item'
CO_PROVA='Identificador da Prova'
IN_ITEM_ABAN='Indicador de item abandonado'	
TX_MOTIVO_ABAN='Motivo para o abandono do item'  
NU_PARAM_A='Par�metro de discrimina��o (a)'		
NU_PARAM_B='Par�metro de dificuldade (b)'		
NU_PARAM_C='Par�metro de acerto ao acaso (c)'	
TX_COR='Cor da Prova'
TP_CERTIFICACAO='Tipo de Certifica��o'
IN_ITEM_ADAPTADO='Item pertencente � prova adaptada';

RUN;