/**************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica              	  */      
/*                                   									  */	
/*  Coordena��o-Geral de Instrumentos e Medidas (CGIM)					  */
/*------------------------------------------------------------------------*/
/*  PROGRAMA:                                                             */
/*           INPUT_SAS_ITENS_PROVA_2019.sas	                        	  */
/*------------------------------------------------------------------------*/
/*  DESCRICAO: PROGRAMA PARA LEITURA DOS ITENS DAS PROVAS DO ENCCEJA 2019 */    
/*                                                                        */
/**************************************************************************/
/**************************************************************************/
/* Obs:                                                                   */
/* 		                                                                  */
/* Para abrir os microdados � necess�rio salvar este programa e o arquivo */
/* ITENS_PROVA_2019.CSV no diret�rio C:\ do computador.				      */
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

proc format;
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


DATA WORK.ITENS_2019;
INFILE 'C:\MICRODADOS_ENCCEJA_ITENS_PROVA_2019.csv' /*Endere�o do arquivo em seu computador. Por exemplo: C:\arquivo.csv*/
        LRECL=100
        FIRSTOBS=2
        DLM=','
        MISSOVER
        DSD ;

INPUT
        CO_POSICAO       : ?? BEST2.
        SG_AREA          : $CHAR2.
        CO_ITEM          : ?? BEST5.
        TX_GABARITO      : $CHAR1.
        CO_HABILIDADE    : ?? BEST2.
        CO_PROVA         : ?? BEST6.
		IN_ITEM_ABAN	 : ?? BEST1.
		TX_MOTIVO_ABAN   : $CHAR40.
		NU_PARAM_A		 : BEST8.
		NU_PARAM_B		 : BEST8.
		NU_PARAM_C		 : BEST8.
        TX_COR           : $CHAR7.
        TP_CERTIFICACAO  : ?? BEST1.
        IN_ITEM_ADAPTADO : ?? BEST1.;

ATTRIB  SG_AREA          FORMAT = $SG_AREA.;         
ATTRIB  TP_CERTIFICACAO  FORMAT = TP_CERTIFICACAO.;       
ATTRIB  IN_ITEM_ADAPTADO FORMAT = IN_ITEM_ADAPTADO.;
ATTRIB  IN_ITEM_ABAN	 FORMAT = IN_ITEM_ABAN.;

LABEL
CO_POSICAO='Posi��o do Item na Prova'
SG_AREA='�rea de Conhecimento do Item'
CO_ITEM='C�digo do Item'
TX_GABARITO='Gabarito do Item'
CO_HABILIDADE='Habilidade do Item'
IN_ITEM_ABAN='Indicador de item abandonado'	
TX_MOTIVO_ABAN='Motivo para o abandono do item'  
NU_PARAM_A='Par�metro de discrimina��o (a)'		
NU_PARAM_B='Par�metro de dificuldade (b)'		
NU_PARAM_C='Par�metro de acerto ao acaso (c)'
TX_COR='Cor da Prova'
CO_PROVA='Identificador da Prova'
TP_CERTIFICACAO='Tipo de Certifica��o'
IN_ITEM_ADAPTADO='Item pertencente � prova adaptada'

;RUN;