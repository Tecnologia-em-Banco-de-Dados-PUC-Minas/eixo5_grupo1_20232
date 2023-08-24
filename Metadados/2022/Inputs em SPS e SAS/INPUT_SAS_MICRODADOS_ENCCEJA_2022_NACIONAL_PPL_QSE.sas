/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                */ 
/*                                   			                                       */
/*  Coordena��o-Geral de Medidas da Educa��o B�sica             					   */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*               INPUT_SAS_MICRODADOS_ENCCEJA_2022_NACIONAL_PPL_QSE                	   */
/*-------------------------------------------------------------------------------------*/
/* DESCRICAO: PROGRAMA PARA LEITURA DOS MICRODADOS DO QUESTION�RIO SOCIOECON�MICO DO   */
/* ENCCEJA 2022 - PARTICIPANTES PPL NACIONAIS										   */
/*																					   */
/***************************************************************************************/
/***************************************************************************************/
/* Obs:                                                                                */
/* 		                                                                               */
/* Para abrir os microdados, � necess�rio salvar este programa e o					   */
/* arquivo "MICRODADOS_ENCCEJA_2022_PPL_NAC_QSE.csv" do ENCCEJA no diret�rio C:\  	   */
/* do computador                                                                       */
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

VALUE $Q001_  
'A' = 'Prisional (maiores de 18 anos de idade).'
'B' = 'Socioeducativa (menores de 18 anos de idade).';

VALUE $Q002_  
'A' = 'Masculino.'
'B' = 'Feminino.';

VALUE $Q003_  
'A' = '15 a 17;'
'B' = '18 a 20;'
'C' = '21 a 25;'
'D' = '26 a 30;'
'E' = '31 a 35;'
'F' = '36 a 40;'
'G' = '41 a 45;'
'H' = '46 a 60;'
'I' = 'A partir de 61.';

VALUE $Q004_  
'A' = 'Branco(a).'
'B' = 'Pardo(a).'
'C' = 'Preto(a).'
'D' = 'Amarelo(a).'
'E' = 'Ind�gena.';

VALUE $Q005A_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q005B_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q005C_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q005D_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q005E_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q005F_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q005G_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q006_  
'A' = 'Solteiro(a)'
'B' = 'Casado(a)'
'C' = 'Possui rela��o est�vel com um(a) companheiro(a)/amasiado(a)'
'D' = 'Separado(a) / divorciado(a) / desquitado(a).'
'E' = 'Vi�vo(a)';

VALUE $Q007_  
'A' = 'Pr�pria.'
'B' = 'Alugada.'
'C' = 'Financiada.'
'D' = 'Eu morava de favor.'
'E' = 'Eu morava na rua.'
'F' = 'Eu morava em uma unidade de acolhimento tempor�rio.';

VALUE $Q008_  
'A' = 'Zona rural;'
'B' = 'Zona urbana.';

VALUE $Q009_  
'A' = 'Sim, fazia parte de comunidade ind�gena;'
'B' = 'Sim, fazia parte de comunidade remanescente de quilombo;'
'C' = 'N�o fazia parte de uma comunidade �tnico-racial.';

VALUE $Q010_
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q011A_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q011B_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q011C_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q011D_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q011E_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q011F_
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q011G_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q012_  
'A' = 'Com uma pessoa.'
'B' = 'Com 2 a 3 pessoas.'
'C' = 'Com 4 a 5 pessoas.'
'D' = 'Com 6 a 7 pessoas.'
'E' = 'Com mais de 7 pessoas.';

VALUE $Q013_  
'A' = 'Sim.'
'B' = 'N�o tenho filho(s) menor(es) de idade.'
'C' = 'N�o tenho filhos(as).';

VALUE $Q014_  
'A' = 'Um(a).'
'B' = 'Dois(duas).'
'C' = 'Tr�s.'
'D' = 'Quatro ou mais.';

VALUE $Q015_  
'A' = 'Com a m�e biol�gica / o pai biol�gico.'
'B' = 'Com a m�e adotiva / o pai adotivo.'
'C' = 'Com a av� materna / o av� materno.'
'D' = 'Com a av� paterna / o av� paterno.'
'E' = 'Com outro parente.'
'F' = 'Em uma institui��o do Estado.'
'G' = 'N�o sei.';

VALUE $Q016_  
'A' = 'Da 1� � 4� s�rie do Ensino Fundamental (antigo prim�rio, 1� grau).'
'B' = 'Da 5� � 8� s�rie do Ensino Fundamental (antigo gin�sio, 1� grau).'
'C' = 'Ensino M�dio (antigo 2� grau).'
'D' = 'Ensino Superior.'
'E' = 'Especializa��o.'
'F' = 'Mestrado.'
'G' = 'Doutorado.'
'H' = 'N�o estudou.'
'I' = 'N�o sei.';

VALUE $Q017_  
'A' = 'Da 1� � 4� s�rie do Ensino Fundamental (antigo prim�rio, 1� grau).'
'B' = 'Da 5� � 8� s�rie do Ensino Fundamental (antigo gin�sio, 1� grau).'
'C' = 'Ensino M�dio (antigo 2� grau).'
'D' = 'Ensino Superior.'
'E' = 'Especializa��o.'
'F' = 'Mestrado.'
'G' = 'Doutorado.'
'H' = 'N�o estudou.'
'I' = 'N�o sei.';

VALUE $Q018_  
'A' = 'Sim, j� frequentei escola regular.'
'B' = 'Sim, estou frequentando escolar regular na Unidade em que estou inserido(a).'
'C' = 'N�o, nunca frequentei escola regular.';

VALUE $Q019_  
'A' = 'Em escola p�blica.'
'B' = 'Em escola particular.'
'C' = 'Em escola ind�gena.'
'D' = 'Em escola situada em comunidade quilombola.'
'E' = 'Em escola da Unidade Prisional/ Socioeducativa.';

VALUE $Q020_ 
'A' = '1� ano do Ensino Fundamental.'
'B' = '2� ano do Ensino Fundamental (antiga 1� s�rie, antigo prim�rio, 1� grau).'
'C' = '3� ano do Ensino Fundamental (antiga 2� s�rie, antigo prim�rio, 1� grau).'
'D' = '4� ano do Ensino Fundamental (antiga 3� s�rie, antigo prim�rio, 1� grau).'
'E' = '5� ano do Ensino Fundamental (antiga 4� s�rie, antigo prim�rio, 1� grau).'
'F' = '6� ano do Ensino Fundamental (antiga 5� s�rie, antigo gin�sio, 1� grau).'
'G' = '7� ano do Ensino Fundamental (antiga 6� s�rie, antigo gin�sio, 1� grau).'
'H' = '8� ano do Ensino Fundamental (antiga 7� s�rie, antigo gin�sio, 1� grau).'
'I' = '9� ano do Ensino Fundamental (antiga 8� s�rie, antigo gin�sio, 1� grau).'
'J' = '1� s�rie do Ensino M�dio (antigo 2� grau).'
'K' = '2� s�rie do Ensino M�dio (antigo 2� grau).'
'L' = '3� s�rie do Ensino M�dio (antigo 2� grau).'
'M' = 'N�o sei.';

VALUE $Q021_  
'A' = 'Com menos de 10 anos de idade.'
'B' = 'Entre 10 e 14 anos de idade.'
'C' = 'Entre 15 e 17 anos de idade.'
'D' = 'Com mais de 17 anos de idade.';

VALUE $Q022A_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q022B_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q022C_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q022D_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q022E_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q022F_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q022G_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q022H_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q023A_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q023B_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q023C_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q023D_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q023E_
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q023F_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q023G_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q024_  
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q025_  
'A' = 'Com menos de 10 anos de idade.'
'B' = 'Entre 10 e 14 anos de idade.'
'C' = 'Entre 15 e 18 anos de idade.'
'D' = 'Ap�s 18 anos de idade.';

VALUE $Q026_  
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q027_  
'A' = 'De 3/4 at� 1 sal�rio m�nimo (De R$ 909,00 at� R$ 1.212,00);'
'B' = 'De 1 a 2 sal�rios m�nimos (de R$ 1.212,01 at� R$ 2.424,00);'
'C' = 'De 2 a 3 sal�rios m�nimos (de R$ 2.424,01 at� R$ 3.636,00).'
'D' = 'N�o sou remunerado(a) pelo trabalho que exer�o na Unidade em que estou inserido(a).';

VALUE $Q028A_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q028B_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q028C_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q028D_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q028E_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q029_  
'A' = 'Menos de seis horas di�rias.'
'B' = 'Seis horas di�rias.'
'C' = 'Sete horas di�rias.'
'D' = 'Oito horas di�rias.'
'E' = 'Sem jornada fixa, at� 8 horas semanais.';

VALUE $Q031A_
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q031B_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q031C_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q031D_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q031E_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q031F_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q032A_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q032B_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q032C_ 
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q032D_
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q032E_
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q032F_
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q032G_
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q032H_
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q033_
'A' = 'Sim, frequento o Ensino M�dio regular.'
'B' = 'Sim, frequento aulas de alfabetiza��o em turma de EJA.'
'C' = 'Sim, frequento o Ensino Fundamental em turma de EJA.'
'D' = 'Sim, frequento o Ensino M�dio em turma de EJA.'
'E' = 'N�o estudo regularmente.';

VALUE $Q034A_
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q034B_
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q034C_
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q034D_
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q034E_
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q034F_
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q035_
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q036_
'A' = 'Uma vez por semana.'
'B' = 'Duas a tr�s vezes por semana.'
'C' = 'De quatro a cinco vezes por semana.'
'D' = 'Diariamente.';

VALUE $Q037A_
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q037B_
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q037C_
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q037D_
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q037E_
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q037F_
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q037G_
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q037H_
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q037I_
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q037J_
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q037K_
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q038A_
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q038B_
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q038C_
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q038D_
'A' = 'Sim'
'B' = 'N�o';

VALUE $Q038E_ 
'A' = 'Sim'
'B' = 'N�o';

DATA ENCCEJA_2022_PPL_NAC_QSE;

INFILE 'C:\MICRODADOS_ENCCEJA_2022_PPL_NAC_QSE.csv' /*Endere�o do arquivo em seu computador. Por exemplo: C:\arquivo.csv*/
        LRECL=250
		FIRSTOBS=2
        DLM=';'
		MISSOVER
        DSD ;
    INPUT
        Q001             : $CHAR1.
        Q002             : $CHAR1.
        Q003             : $CHAR1.
        Q004             : $CHAR1.
        Q005A            : $CHAR1.
        Q005B            : $CHAR1.
        Q005C            : $CHAR1.
        Q005D            : $CHAR1.
        Q005E            : $CHAR1.
        Q005F            : $CHAR1.
        Q005G            : $CHAR1.
        Q006             : $CHAR1.
        Q007             : $CHAR1.
        Q008             : $CHAR1.
        Q009             : $CHAR1.
        Q010             : $CHAR1.
        Q011A            : $CHAR1.
        Q011B            : $CHAR1.
        Q011C            : $CHAR1.
        Q011D            : $CHAR1.
        Q011E            : $CHAR1.
        Q011F            : $CHAR1.
        Q011G            : $CHAR1.
        Q012             : $CHAR1.
        Q013             : $CHAR1.
        Q014             : $CHAR1.
        Q015             : $CHAR1.
        Q016             : $CHAR1.
        Q017             : $CHAR1.
        Q018             : $CHAR1.
        Q019             : $CHAR1.
        Q020             : $CHAR1.
        Q021             : $CHAR1.
        Q022A            : $CHAR1.
        Q022B            : $CHAR1.
        Q022C            : $CHAR1.
        Q022D            : $CHAR1.
        Q022E            : $CHAR1.
        Q022F            : $CHAR1.
        Q022G            : $CHAR1.
        Q022H            : $CHAR1.
        Q023A            : $CHAR1.
        Q023B            : $CHAR1.
        Q023C            : $CHAR1.
        Q023D            : $CHAR1.
        Q023E            : $CHAR1.
        Q023F            : $CHAR1.
        Q023G            : $CHAR1.
        Q024             : $CHAR1.
        Q025             : $CHAR1.
        Q026             : $CHAR1.
        Q027             : $CHAR1.
        Q028A            : $CHAR1.
        Q028B            : $CHAR1.
        Q028C            : $CHAR1.
        Q028D            : $CHAR1.
        Q028E            : $CHAR1.
        Q029             : $CHAR1.
        Q030_1           : ?? BEST1.
        Q030_2           : ?? BEST1.
        Q030_3           : ?? BEST1.
        Q030_4           : ?? BEST1.
        Q030_5           : ?? BEST1.
        Q030_6           : ?? BEST1.
        Q030_7           : ?? BEST1.
        Q031A            : $CHAR1.
        Q031B            : $CHAR1.
        Q031C            : $CHAR1.
        Q031D            : $CHAR1.
        Q031E            : $CHAR1.
        Q031F            : $CHAR1.
        Q032A            : $CHAR1.
        Q032B            : $CHAR1.
        Q032C            : $CHAR1.
        Q032D            : $CHAR1.
        Q032E            : $CHAR1.
        Q032F            : $CHAR1.
        Q032G            : $CHAR1.
        Q032H            : $CHAR1.
        Q033             : $CHAR1.
        Q034A            : $CHAR1.
        Q034B            : $CHAR1.
        Q034C            : $CHAR1.
        Q034D            : $CHAR1.
        Q034E            : $CHAR1.
        Q034F            : $CHAR1.
        Q035             : $CHAR1.
        Q036             : $CHAR1.
        Q037A            : $CHAR1.
        Q037B            : $CHAR1.
        Q037C            : $CHAR1.
        Q037D            : $CHAR1.
        Q037E            : $CHAR1.
        Q037F            : $CHAR1.
        Q037G            : $CHAR1.
        Q037H            : $CHAR1.
        Q037I            : $CHAR1.
        Q037J            : $CHAR1.
        Q037K            : $CHAR1.
        Q038A            : $CHAR1.
        Q038B            : $CHAR1.
        Q038C            : $CHAR1.
        Q038D            : $CHAR1.
        Q038E            : $CHAR1.
        Q039_1           : ?? BEST1.
        Q039_2           : ?? BEST1.
        Q039_3           : ?? BEST1.
        Q039_4           : ?? BEST1.
        Q039_5           : ?? BEST1.
        Q039_6           : ?? BEST1.
        Q039_7           : ?? BEST1. ;

ATTRIB	Q001   FORMAT=$Q001_.; 
ATTRIB	Q002   FORMAT=$Q002_.; 
ATTRIB	Q003   FORMAT=$Q003_.; 
ATTRIB	Q004   FORMAT=$Q004_.; 
ATTRIB	Q005A  FORMAT=$Q005A_.;
ATTRIB	Q005B  FORMAT=$Q005B_.;
ATTRIB	Q005C  FORMAT=$Q005C_.;
ATTRIB	Q005D  FORMAT=$Q005D_.;
ATTRIB	Q005E  FORMAT=$Q005E_.;
ATTRIB	Q005F  FORMAT=$Q005F_.;
ATTRIB	Q005G  FORMAT=$Q005G_.;
ATTRIB	Q006   FORMAT=$Q006_.; 
ATTRIB	Q007   FORMAT=$Q007_.; 
ATTRIB	Q008   FORMAT=$Q008_.; 
ATTRIB	Q009   FORMAT=$Q009_.; 
ATTRIB	Q010   FORMAT=$Q010_.; 
ATTRIB	Q011A  FORMAT=$Q011A_.;
ATTRIB	Q011B  FORMAT=$Q011B_.;
ATTRIB	Q011C  FORMAT=$Q011C_.;
ATTRIB	Q011D  FORMAT=$Q011D_.;
ATTRIB	Q011E  FORMAT=$Q011E_.;
ATTRIB	Q011F  FORMAT=$Q011F_.;
ATTRIB	Q011G  FORMAT=$Q011G_.;
ATTRIB	Q012   FORMAT=$Q012_.; 
ATTRIB	Q013   FORMAT=$Q013_.; 
ATTRIB	Q014   FORMAT=$Q014_.; 
ATTRIB	Q015   FORMAT=$Q015_.; 
ATTRIB	Q016   FORMAT=$Q016_.; 
ATTRIB	Q017   FORMAT=$Q017_.; 
ATTRIB	Q018   FORMAT=$Q018_.; 
ATTRIB	Q019   FORMAT=$Q019_.; 
ATTRIB	Q020   FORMAT=$Q020_.; 
ATTRIB	Q021   FORMAT=$Q021_.; 
ATTRIB	Q022A  FORMAT=$Q022A_.;
ATTRIB	Q022B  FORMAT=$Q022B_.;
ATTRIB	Q022C  FORMAT=$Q022C_.;
ATTRIB	Q022D  FORMAT=$Q022D_.;
ATTRIB	Q022E  FORMAT=$Q022E_.;
ATTRIB	Q022F  FORMAT=$Q022F_.;
ATTRIB	Q022G  FORMAT=$Q022G_.;
ATTRIB	Q022H  FORMAT=$Q022H_.;
ATTRIB	Q023A  FORMAT=$Q023A_.;
ATTRIB	Q023B  FORMAT=$Q023B_.;
ATTRIB	Q023C  FORMAT=$Q023C_.;
ATTRIB	Q023D  FORMAT=$Q023D_.;
ATTRIB	Q023E  FORMAT=$Q023E_.;
ATTRIB	Q023F  FORMAT=$Q023F_.;
ATTRIB	Q023G  FORMAT=$Q023G_.;
ATTRIB	Q024   FORMAT=$Q024_.; 
ATTRIB	Q025   FORMAT=$Q025_.; 
ATTRIB	Q026   FORMAT=$Q026_.; 
ATTRIB	Q027   FORMAT=$Q027_.; 
ATTRIB	Q028A  FORMAT=$Q028A_.;
ATTRIB	Q028B  FORMAT=$Q028B_.;
ATTRIB	Q028C  FORMAT=$Q028C_.;
ATTRIB	Q028D  FORMAT=$Q028D_.;
ATTRIB	Q028E  FORMAT=$Q028E_.;
ATTRIB	Q029   FORMAT=$Q029_.;
ATTRIB	Q031A  FORMAT=$Q031A_.;
ATTRIB	Q031B  FORMAT=$Q031B_.;
ATTRIB	Q031C  FORMAT=$Q031C_.;
ATTRIB	Q031D  FORMAT=$Q031D_.;
ATTRIB	Q031E  FORMAT=$Q031E_.;
ATTRIB	Q031F  FORMAT=$Q031F_.;
ATTRIB	Q032A  FORMAT=$Q032A_.;
ATTRIB	Q032B  FORMAT=$Q032B_.;
ATTRIB	Q032C  FORMAT=$Q032C_.;
ATTRIB	Q032D  FORMAT=$Q032D_.;
ATTRIB	Q032E  FORMAT=$Q032E_.;
ATTRIB	Q032F  FORMAT=$Q032F_.;
ATTRIB	Q032G  FORMAT=$Q032G_.;
ATTRIB	Q032H  FORMAT=$Q032H_.;
ATTRIB	Q033   FORMAT=$Q033_.;
ATTRIB	Q034A  FORMAT=$Q034A_.;
ATTRIB	Q034B  FORMAT=$Q034B_.;
ATTRIB	Q034C  FORMAT=$Q034C_.;
ATTRIB	Q034D  FORMAT=$Q034D_.;
ATTRIB	Q034E  FORMAT=$Q034E_.;
ATTRIB	Q034F  FORMAT=$Q034F_.;
ATTRIB	Q035   FORMAT=$Q035_.; 
ATTRIB	Q036   FORMAT=$Q036_.; 
ATTRIB	Q037A  FORMAT=$Q037A_.;
ATTRIB	Q037B  FORMAT=$Q037B_.;
ATTRIB	Q037C  FORMAT=$Q037C_.;
ATTRIB	Q037D  FORMAT=$Q037D_.;
ATTRIB	Q037E  FORMAT=$Q037E_.;
ATTRIB	Q037F  FORMAT=$Q037F_.;
ATTRIB	Q037G  FORMAT=$Q037G_.;
ATTRIB	Q037H  FORMAT=$Q037H_.;
ATTRIB	Q037I  FORMAT=$Q037I_.;
ATTRIB	Q037J  FORMAT=$Q037J_.;
ATTRIB	Q037K  FORMAT=$Q037K_.;
ATTRIB	Q038A  FORMAT=$Q038A_.;
ATTRIB	Q038B  FORMAT=$Q038B_.;
ATTRIB	Q038C  FORMAT=$Q038C_.;
ATTRIB	Q038D  FORMAT=$Q038D_.;
ATTRIB	Q038E  FORMAT=$Q038E_.;

LABEL
Q001  ='Voc� est� inserido em que tipo de Unidade?'
Q002  ='Qual o seu sexo?'
Q003  ='Quantos anos de idade voc� possui?'
Q004  ='Como voc� se considera?'
Q005A ='Qual(is) documento(s) abaixo voc� possui? Certid�o de nascimento.'
Q005B ='Qual(is) documento(s) abaixo voc� possui? Carteira de Identidade.'
Q005C ='Qual(is) documento(s) abaixo voc� possui? CPF.'
Q005D ='Qual(is) documento(s) abaixo voc� possui? Carteira de Trabalho.'
Q005E ='Qual(is) documento(s) abaixo voc� possui? Carteira de Motorista.'
Q005F ='Qual(is) documento(s) abaixo voc� possui? T�tulo de Eleitor.'
Q005G ='Qual(is) documento(s) abaixo voc� possui? N�o tenho nenhum dos documentos acima mencionados.'
Q006  ='Qual o seu estado civil? (Marque apenas uma resposta)'
Q007  ='Como era a sua moradia antes de ser privado(a) de liberdade?'
Q008  ='Onde se situava o local onde voc� morava antes de ser privado(a) de liberdade?'
Q009  ='O local onde voc� morava antes de ser privado(a) de liberdade fazia parte de alguma comunidade �tnicoracial?'
Q010  ='Voc� morava sozinho(a) antes de ser privado(a) de liberdade?'
Q011A ='Quem morava com voc� antes de ser privado(a) de liberdade? Pai/M�e.'
Q011B ='Quem morava com voc� antes de ser privado(a) de liberdade?C�njuge/companheiro(a).'
Q011C ='Quem morava com voc� antes de ser privado(a) de liberdade? Filho(s) ou filha(s).'
Q011D ='Quem morava com voc� antes de ser privado(a) de liberdade? Irm�o(s) ou irm�(s).'
Q011E ='Quem morava com voc� antes de ser privado(a) de liberdade? Outros parentes.'
Q011F ='Quem morava com voc� antes de ser privado(a) de liberdade? Amigos, colegas ou conhecidos.'
Q011G ='Quem morava com voc� antes de ser privado(a) de liberdade? Pessoas abrigadas/institucionalizadas.'
Q012  ='No local onde voc� morava antes de ser privado(a) de liberdade, com quantas pessoas voc� dividia o mesmo ambiente para dormir?'
Q013  ='Voc� tem filho(s) menor(es) de 18 anos de idade?'
Q014  ='Quantos filhos menores de 18 anos de idade voc� tem?'
Q015  ='Com quem est� ou est�o seu(s) filho(s) menor(es) de idade?'
Q016  ='Qual � o n�vel de escolaridade do seu pai?'
Q017  ='Qual � o n�vel de escolaridade da sua m�e?'
Q018  ='Voc� j� frequentou alguma vez a escola regular?'
Q019  ='Em que tipo de escola voc� cursou a maior parte do Ensino Fundamental ou Ensino M�dio?'
Q020  ='Em que ano/s�rie voc� deixou de frequentar a escola?'
Q021  ='Com quantos anos de idade voc� deixou de frequentar a escola regular?'
Q022A ='Qual dos seguintes motivos pessoais influenciou voc� a deixar de frequentar a escola regular? Faltava escola perto de casa.'
Q022B ='Qual dos seguintes motivos pessoais influenciou voc� a deixar de frequentar a escola regular? Vivi situa��es de maus tratos na fam�lia.'
Q022C ='Qual dos seguintes motivos pessoais influenciou voc� a deixar de frequentar a escola regular? Faltava apoio familiar.'
Q022D ='Qual dos seguintes motivos pessoais influenciou voc� a deixar de frequentar a escola regular? Tive filho(s) na adolesc�ncia.'
Q022E ='Qual dos seguintes motivos pessoais influenciou voc� a deixar de frequentar a escola regular? Precisei ajudar nas tarefas de casa.'
Q022F ='Qual dos seguintes motivos pessoais influenciou voc� a deixar de frequentar a escola regular? Precisei trabalhar.'
Q022G ='Qual dos seguintes motivos pessoais influenciou voc� a deixar de frequentar a escola regular? Mudei repetidas vezes de endere�o.'
Q022H ='Qual dos seguintes motivos pessoais influenciou voc� a deixar de frequentar a escola regular? Eu n�o gostava de estudar.'
Q023A ='Qual desses outros motivos influenciou voc� a deixar de frequentar a escola regular? N�o havia vaga em escola p�blica.'
Q023B ='Qual desses outros motivos influenciou voc� a deixar de frequentar a escola regular? Faltavam professores em minha escola.'
Q023C ='Qual desses outros motivos influenciou voc� a deixar de frequentar a escola regular? Era dif�cil me relacionar com os professores.'
Q023D ='Qual desses outros motivos influenciou voc� a deixar de frequentar a escola regular? Era dif�cil me relacionar com os meus colegas.'
Q023E ='Qual desses outros motivos influenciou voc� a deixar de frequentar a escola regular? A escola era insegura e mal conservada.'
Q023F ='Qual desses outros motivos influenciou voc� a deixar de frequentar a escola regular? As formas de ensino e de avalia��o eram desestimulantes.'
Q023G ='Qual desses outros motivos influenciou voc� a deixar de frequentar a escola regular? O conte�do das aulas n�o servia para a vida.'
Q024  ='Antes de ter sua liberdade privada, voc� trabalhava?'
Q025  ='Com que idade voc� come�ou a trabalhar?'
Q026  ='Voc� realiza algum trabalho na Unidade em que est� inserido(a)?'
Q027  ='Qual � a sua renda mensal aproximadamente?'
Q028A ='O valor que voc� recebe pelo trabalho remunerado na Unidade em que voc� est� inserido(a) destina-se a: compor uma caderneta de poupan�a.'
Q028B ='O valor que voc� recebe pelo trabalho remunerado na Unidade em que voc� est� inserido(a) destina-se a: custear despesas pessoais.'
Q028C ='O valor que voc� recebe pelo trabalho remunerado na Unidade em que voc� est� inserido(a) destina-se a: pagar indeniza��o determinada judicialmente.'
Q028D ='O valor que voc� recebe pelo trabalho remunerado na Unidade em que voc� est� inserido(a) destina-se a: prestar assist�ncia � fam�lia.'
Q028E ='O valor que voc� recebe pelo trabalho remunerado na Unidade em que voc� est� inserido(a) destina-se a: ressarcir o Estado.'
Q029  ='Quantas horas voc� trabalha na Unidade em que voc� est� inserido(a)?'
Q030_1='Indique o grau de import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar na Unidade em que voc� est� inserido(a): Adquirir experi�ncia para reinser��o social.'
Q030_2='Indique o grau de import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar na Unidade em que voc� est� inserido(a): Aprender uma profiss�o.'
Q030_3='Indique o grau de import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar na Unidade em que voc� est� inserido(a): Ganhar meu pr�prio dinheiro.'
Q030_4='Indique o grau de import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar na Unidade em que voc� est� inserido(a): Pagar uma indeniza��o.'
Q030_5='Indique o grau de import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar na Unidade em que voc� est� inserido(a): Remir a pena.'
Q030_6='Indique o grau de import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar na Unidade em que voc� est� inserido(a): Ressarcir o Estado.'
Q030_7='Indique o grau de import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar na Unidade em que voc� est� inserido(a): Sustentar minha fam�lia.'
Q031A ='Qual dos cursos abaixo voc� j� concluiu desde sua priva��o de liberdade? Curso profissionalizante.'
Q031B ='Qual dos cursos abaixo voc� j� concluiu desde sua priva��o de liberdade? Curso de l�ngua estrangeira.'
Q031C ='Qual dos cursos abaixo voc� j� concluiu desde sua priva��o de liberdade? Curso de computa��o ou inform�tica.'
Q031D ='Qual dos cursos abaixo voc� j� concluiu desde sua priva��o de liberdade? Curso preparat�rio para testes, exames ou provas.'
Q031E ='Qual dos cursos abaixo voc� j� concluiu desde sua priva��o de liberdade? Outro curso.'
Q031F ='Qual dos cursos abaixo voc� j� concluiu desde sua priva��o de liberdade? N�o realizei nenhum curso.'
Q032A ='Voc� realiza atividades educacionais ou culturais regularmente na Unidade em que voc� est� inserido(a)? Sim, fa�o curso profissionalizante.'
Q032B ='Voc� realiza atividades educacionais ou culturais regularmente na Unidade em que voc� est� inserido(a)? Sim, fa�o curso de l�ngua estrangeira.'
Q032C ='Voc� realiza atividades educacionais ou culturais regularmente na Unidade em que voc� est� inserido(a)? Sim, fa�o curso de computa��o ou inform�tica.'
Q032D ='Voc� realiza atividades educacionais ou culturais regularmente na Unidade em que voc� est� inserido(a)? Sim, participo de oficinas culturais.'
Q032E ='Voc� realiza atividades educacionais ou culturais regularmente na Unidade em que voc� est� inserido(a)? Sim, participo de grupos religiosos/de estudo b�blico.'
Q032F ='Voc� realiza atividades educacionais ou culturais regularmente na Unidade em que voc� est� inserido(a)? Sim, realizo atividade regular de leitura.'
Q032G ='Voc� realiza atividades educacionais ou culturais regularmente na Unidade em que voc� est� inserido(a)? Sim, pratico atividades de esporte/lazer.'
Q032H ='Voc� realiza atividades educacionais ou culturais regularmente na Unidade em que voc� est� inserido(a)? N�o realizo nenhuma dessas atividades regularmente.'
Q033  ='Voc� estuda regularmente na Unidade em que voc� est� inserido(a)?'
Q034A ='Qual o principal motivo te influencia a estudar na Unidade em que voc� est� inserido(a)? Adquirir mais conhecimento, ficar atualizado.'
Q034B ='Qual o principal motivo te influencia a estudar na Unidade em que voc� est� inserido(a)? Atender � expectativa de meus familiares.'
Q034C ='Qual o principal motivo te influencia a estudar na Unidade em que voc� est� inserido(a)? Conseguir entrar na faculdade.'
Q034D ='Qual o principal motivo te influencia a estudar na Unidade em que voc� est� inserido(a)? Conseguir um emprego.'
Q034E ='Qual o principal motivo te influencia a estudar na Unidade em que voc� est� inserido(a)? Desenvolver novas habilidades.'
Q034F ='Qual o principal motivo te influencia a estudar na Unidade em que voc� est� inserido(a)? Remir a pena.'
Q035  ='Voc� tem acesso a biblioteca ou sala de leitura na Unidade em que voc� est� inserido(a)?'
Q036  ='Com que frequ�ncia voc� visita a biblioteca ou a sala de leitura na Unidade em que voc� est� inserido(a)?'
Q037A ='Que g�nero de livros voc� tem o h�bito de ler em sua Unidade? Artes/m�sica.'
Q037B ='Que g�nero de livros voc� tem o h�bito de ler em sua Unidade? Autoajuda.'
Q037C ='Que g�nero de livros voc� tem o h�bito de ler em sua Unidade? Biografias.'
Q037D ='Que g�nero de livros voc� tem o h�bito de ler em sua Unidade? Did�ticos escolares.'
Q037E ='Que g�nero de livros voc� tem o h�bito de ler em sua Unidade? Infanto-juvenil.'
Q037F ='Que g�nero de livros voc� tem o h�bito de ler em sua Unidade? Literatura brasileira/estrangeira.'
Q037G ='Que g�nero de livros voc� tem o h�bito de ler em sua Unidade? Poesia/poemas.'
Q037H ='Que g�nero de livros voc� tem o h�bito de ler em sua Unidade? Religi�o.'
Q037I ='Que g�nero de livros voc� tem o h�bito de ler em sua Unidade? Revistas/gibis.'
Q037J ='Que g�nero de livros voc� tem o h�bito de ler em sua Unidade? T�cnico-cient�fico, jur�dicos.'
Q037K ='Que g�nero de livros voc� tem o h�bito de ler em sua Unidade? N�o tenho h�bito de leitura.'
Q038A ='Qual o principal motivo de voc� ler livros na Unidade em que voc� est� inserido(a)? Adquirir mais conhecimento, ficar atualizado.'
Q038B ='Qual o principal motivo de voc� ler livros na Unidade em que voc� est� inserido(a)? Desenvolver autoconhecimento.'
Q038C ='Qual o principal motivo de voc� ler livros na Unidade em que voc� est� inserido(a)? Relaxar, me distrair.'
Q038D ='Qual o principal motivo de voc� ler livros na Unidade em que voc� est� inserido(a)? Melhorar minhas habilidades de comunica��o.'
Q038E ='Qual o principal motivo de voc� ler livros na Unidade em que voc� est� inserido(a)? Remir a pena.'
Q039_1='Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA. Atender � expectativa dos meus familiares.'
Q039_2='Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA. Conquistar reconhecimento profissional.'
Q039_3='Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA. Conseguir entrar na faculdade.'
Q039_4='Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA. Conseguir um emprego.'
Q039_5='Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA. Obter a certifica��o do Ensino Fundamental/M�dio.'
Q039_6='Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA. Remir a pena.'
Q039_7='Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA. Testar meus conhecimentos.';

RUN;QUIT;
