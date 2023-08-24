/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                */ 
/*                                   			                                       */
/*  Coordena��o-Geral de Medidas da Educa��o B�sica						               */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*               INPUT_SAS_MICRODADOS_ENCCEJA_2018_PPL_NACIONAL	                       */
/*-------------------------------------------------------------------------------------*/
/* DESCRICAO: PROGRAMA PARA LEITURA DOS MICRODADOS DO ENCCEJA 2018- NACIONAL PPL	   */
/* COM DADOS DE CADASTRO E RESPOSTAS                       							   */
/***************************************************************************************/
/***************************************************************************************/
/* Obs:                                                                                */
/* 		                                                                               */
/* Para abrir os microdados, � necess�rio salvar este programa e 					   */
/* o arquivo com os dados do ENCCEJA PPL NACIONAL			                           */
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
2=	'Eliminado na prova';

VALUE TP_PRESENCA_MT

0=	'Faltou � prova'
1=	'Presente � prova'
2=	'Eliminado na prova';

VALUE TP_PRESENCA_CN

0=	'Faltou � prova'
1=	'Presente � prova'
2=	'Eliminado na prova';

VALUE TP_PRESENCA_CH

0=	'Faltou � prova'
1=	'Presente � prova'
2=	'Eliminado na prova';

VALUE CO_PROVA_LC

201819=	'Cinza (Ensino Fundamental)'
201823=	'Branca (Ensino M�dio)';

VALUE CO_PROVA_MT

201818=	'Amarela (Ensino Fundamental)'
201822=	'Amarela (Ensino M�dio)';

VALUE CO_PROVA_CN

201817=	'Rosa (Ensino Fundamental)'
201821=	'Rosa (Ensino M�dio)';

VALUE CO_PROVA_CH

201820=	'Azul (Ensino Fundamental)'
201824=	'Azul (Ensino M�dio)';

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
;


DATA ENCCEJA_PPL_NACIONAL;

 INFILE 'C:\MICRODADOS_ENCCEJA_2018_PPL_NAC.csv' /*Endere�o do arquivo em seu computador. Por exemplo: C:\arquivo.csv*/
        LRECL=476
		FIRSTOBS=2
        DLM=','
        MISSOVER
        DSD ;
    INPUT
        NU_INSCRICAO     : ?? BEST12.
		NU_ANO           : ?? BEST4.
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
        NU_NOTA_REDACAO  : ?? COMMA4. ;
  
ATTRIB TP_CERTIFICACAO FORMAT=TP_CERTIFICACAO.;
ATTRIB TP_FAIXA_ETARIA FORMAT=TP_FAIXA_eTARIA.;       
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

LABEL

NU_INSCRICAO= 'Campo com m�scara no n�mero de inscri��o do candidato.'
NU_ANO= 'Ano do Exame Encceja que est� em an�lise.'    
TP_CERTIFICACAO= 'Indicador do tipo de certifica��o pedida pelo participante.'
TP_FAIXA_ETARIA= 'Faixa et�ria do participante.'         
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
;
RUN;QUIT;