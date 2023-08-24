/***************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                */ 
/*                                   			                                       */
/*  Coordena��o-Geral do Sistema Nacional de Avalia��o da Educa��o B�sica              */
/*-------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                          */
/*               INPUT_SAS_MICRODADOS_ENCCEJA_2019_QUESTIONARIO_PPL                	   */
/*-------------------------------------------------------------------------------------*/
/* DESCRICAO: PROGRAMA PARA LEITURA DOS MICRODADOS DO QUESTION�RIO SOCIOECON�MICO DO   */
/* ENCCEJA 2019 - PARTICIPANTES PPL NACIONAIS										   */
/*																					   */
/***************************************************************************************/
/***************************************************************************************/
/* Obs:                                                                                */
/* 		                                                                               */
/* Para abrir os microdados, � necess�rio salvar este programa e o					   */
/* arquivo "QUESTIONARIO_ENCCEJA_PPL_NAC.csv" do ENCCEJA no diret�rio C:\ do computador*/
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
'A'=	'Prisional (maiores de 18 anos)'
'B'=	'Socioeducativa (menores de 18 anos)';

VALUE $Q002_
'A'=	'Branco(a)'
'B'=	'Pardo(a)'
'C'=	'Preto(a)'
'D'=	'Amarelo(a)'
'E'=	'Ind�gena';

VALUE $Q003_
'A'=	'Solteiro(a)'
'B'=	'Casado(a)'
'C'=	'Possui rela��o est�vel com um(a) companheiro(a)/amasiado(a)'
'D'=	'Separado(a) / divorciado(a) / desquitado(a).'
'E'=	'Vi�vo(a)';

VALUE $Q004_
'A'=	'Em casa ou apartamento, com minha fam�lia'
'B'=	'Em casa ou apartamento, sozinho(a)'
'C'=	'Em quarto ou c�modo alugado, sozinho(a)'
'D'=	'Em habita��o coletiva: albergue, hotel, hospedaria, quartel, pensionato, rep�blica etc.'
'E'=	'Na rua'
'F'=	'N�o tinha moradia fixa';

VALUE $Q005_
'A'=	'Pr�pria'
'B'=	'Alugada'
'C'=	'Cedida'
'D'=	'Eu morava na rua';

VALUE $Q006_
'A'=	'Zona rural'
'B'=	'Zona urbana'
'C'=	'Comunidade ind�gena'
'D'=	'Comunidade quilombola';

VALUE $Q007A_
'B'=	'N�o'
'A'=	'Sim';

VALUE $Q007B_
'B'=	'N�o'
'A'=	'Sim';

VALUE $Q007C_
'B'=	'N�o'
'A'=	'Sim';

VALUE $Q007D_
'B'=	'N�o'
'A'=	'Sim';

VALUE $Q007E_
'B'=	'N�o'
'A'=	'Sim';

VALUE $Q007F_
'B'=	'N�o'
'A'=	'Sim';

VALUE $Q007G_
'B'=	'N�o'
'A'=	'Sim';

VALUE $Q008_
'A'=	'Morava sozinho'
'B'=	'Uma a tr�s'
'C'=	'Quatro a sete'
'D'=	'Oito a dez'
'E'=	'Mais de dez';

VALUE $Q009_
'A'=	'Um(a)'
'B'=	'Dois(duas)'
'C'=	'Tr�s ou mais'
'D'=	'N�o tenho filhos(as). (Passe para a quest�o 11)';

VALUE $Q010_ 
'A'=	'Com a m�e deles / com o pai deles'
'B'=	'Com minha fam�lia ou com parentes'
'C'=	'Est�o em uma institui��o'
'D'=	'N�o sei';

VALUE $Q011_ 
'A'=	'Da 1� � 4� s�rie do Ensino Fundamental (antigo prim�rio, 1� grau)'
'B'=	'Da 5� � 8� s�rie do Ensino Fundamental (antigo gin�sio, 1� grau)'
'C'=	'Ensino M�dio (antigo 2� grau)'
'D'=	'Ensino Superior'
'E'=	'Especializa��o'
'F'=	'Mestrado'
'G'=	'Doutorado'
'H'=	'N�o estudou'
'I'=	'N�o sei';

VALUE $Q012_ 
'A'=	'Da 1� � 4� s�rie do Ensino Fundamental (antigo prim�rio, 1� grau)'
'B'=	'Da 5� � 8� s�rie do Ensino Fundamental (antigo gin�sio, 1� grau)'
'C'=	'Ensino M�dio (antigo 2� grau)'
'D'=	'Ensino Superior'
'E'=	'Especializa��o'
'F'=	'Mestrado'
'G'=	'Doutorado'
'H'=	'N�o estudou'
'I'=	'N�o sei';

VALUE $Q013_ 
'A'=	'Sim'
'B'=	'N�o (passe para a pergunta 15)';

VALUE $Q014_ 
'A'=	'At� 1 sal�rio m�nimo (at� R$ 954,00).'
'B'=	'De 1 a 3 sal�rios m�nimos (de R$ 954,01 at� R$ 2.862,00).'
'C'=	'De 3 a 6 sal�rios m�nimos (de R$ 2.862,01 at� R$ 5.724,00).'
'D'=	'De 6 a 9 sal�rios m�nimos (de R$ 5.724,01 at� R$ 8.586,00).'
'E'=	'De 9 a 12 sal�rios m�nimos (de R$ 8.586,01 at� R$ 11.448,00).'
'F'=	'De 12 a 15 sal�rios m�nimos (de R$ 11.448,01 at� R$ 14.310,00).'
'G'=	'Mais de 15 sal�rios m�nimos (mais de R$ 14.310,01).';

VALUE $Q015_ 
'A'=	'Nenhuma renda.'
'B'=	'At� 1 sal�rio m�nimo (at� R$ 954,00).'
'C'=	'De 1 a 3 sal�rios m�nimos (de R$ 954,01 at� R$ 2.862,00).'
'D'=	'De 3 a 6 sal�rios m�nimos (de R$ 2.862,01 at� R$ 5.724,00).'
'E'=	'De 6 a 9 sal�rios m�nimos (de R$ 5.724,01 at� R$ 8.586,00).'
'F'=	'De 9 a 12 sal�rios m�nimos (de R$ 8.586,01 at� R$ 11.448,00).'
'G'=	'De 12 a 15 sal�rios m�nimos (de R$ 11.448,01 at� R$ 14.310,00).'
'H'=	'Mais de 15 sal�rios m�nimos (mais de R$ 14.310,01).';


VALUE $Q016_
'A'=	'Sim'
'B'=	'N�o';

VALUE $Q017_
'A'=	'Sim'
'B'=	'N�o, n�o trabalhei enquanto estudava. (passe para a pergunta 22)'
'C'=	'N�o, nunca estudei. (passe para a pergunta 22)';

VALUE $Q018_
'A'=	'Antes dos 14 anos'
'B'=	'Entre 14 e 16 anos'
'C'=	'Entre 17 e 18 anos'
'D'=	'Ap�s 18 anos';

VALUE $Q019A_
'B'=	'N�o'
'A'=	'Sim';

VALUE $Q019B_
'B'=	'N�o'
'A'=	'Sim';

VALUE $Q019C_
'B'=	'N�o'
'A'=	'Sim';

VALUE $Q019D_
'B'=	'N�o'
'A'=	'Sim';

VALUE $Q020_
'A'=	'Sem jornada fixa, at� 10 horas semanais'
'B'=	'De 11 a 20 horas semanais'
'C'=	'De 21 a 30 horas semanais'
'D'=	'De 31 a 40 horas semanais'
'E'=	'Mais de 40 horas semanais';

VALUE $Q023A_
'B'=	'N�o'
'A'=	'Sim';

VALUE $Q023B_
'B'=	'N�o'
'A'=	'Sim';
 
VALUE $Q023C_
'B'=	'N�o'
'A'=	'Sim';
 
VALUE $Q023D_
'B'=	'N�o'
'A'=	'Sim';
 
VALUE $Q023E_
'B'=	'N�o'
'A'=	'Sim';
 
VALUE $Q024_ 
'A'=	'Sim'
'B'=	'N�o (passe para a pergunta 29)';

VALUE $Q025_ 
'A'=	'N�o, nunca'
'B'=	'Sim, uma vez'
'C'=	'Sim, duas vezes'
'D'=	'Sim, tr�s vezes ou mais';

VALUE $Q026_ 
'A'=	'N�o deixei de estudar'
'B'=	'1� s�rie do Ensino Fundamental (antigo prim�rio, 1� grau)'
'C'=	'2� s�rie do Ensino Fundamental (antigo prim�rio, 1� grau)'
'D'=	'3� s�rie do Ensino Fundamental (antigo prim�rio, 1� grau)'
'E'=	'4� s�rie do Ensino Fundamental (antigo prim�rio, 1� grau)'
'F'=	'5� s�rie do Ensino Fundamental (antigo gin�sio, 1� grau)'
'G'=	'6� s�rie do Ensino Fundamental (antigo gin�sio, 1� grau)'
'H'=	'7� s�rie do Ensino Fundamental (antigo gin�sio, 1� grau)'
'I'=	'8� s�rie do Ensino Fundamental (antigo gin�sio, 1� grau)'
'J'=	'1� s�rie do Ensino M�dio (antigo 2� grau)'
'K'=	'2� s�rie do Ensino M�dio (antigo 2� grau)'
'L'=	'3� s�rie do Ensino M�dio (antigo 2� grau)';

VALUE $Q027_ 
'A'=	'Em escola p�blica'
'B'=	'Em escola particular'
'C'=	'Em escola ind�gena'
'D'=	'Em escola situada em comunidade quilombola'
'E'=	'Em escola da Unidade Prisional/ Socioeducativa';

VALUE $Q028_
'A'=	'N�o.'
'B'=	'Sim, por um ano'
'C'=	'Sim, por dois anos'
'D'=	'Sim, por tr�s anos'
'E'=	'Sim, por quatro anos ou mais';
 
VALUE $Q029_ 
'A'=	'Eu me considero preparado(a) para entrar no mercado de trabalho'
'B'=	'Apesar de ter frequentado uma boa escola, eu me considero despreparado(a) para conseguir um bom emprego'
'C'=	'Eu me considero despreparado(a) devido � baixa qualidade do ensino de minha escola'
'D'=	'Eu me considero preparado, mas n�o sei se o mercado de trabalho me aceitar�'
'E'=	'N�o sei';

VALUE $Q031_ 
'A'=	'Menos de 10 anos'
'B'=	'Entre 10 e 14 anos'
'C'=	'Entre 15 e 18 anos'
'D'=	'Entre 19 e 24 anos'
'E'=	'Entre 25 e 30 anos'
'F'=	'Mais de 30 anos'
'G'=	'N�o deixei de frequentar'
'H'=	'N�o frequentei';

VALUE $Q032_ 
'A'=	'Conseguir um emprego'
'B'=	'Retomar os estudos'
'C'=	'Adquirir mais conhecimento, ficar atualizado'
'D'=	'Atender � expectativa de meus familiares'
'E'=	'N�o pretendo voltar a estudar';

VALUE $Q033_ 
'A'=	'Curso profissionalizante'
'B'=	'Curso de l�ngua estrangeira'
'C'=	'Curso de computa��o ou inform�tica'
'D'=	'Curso preparat�rio para outros concursos p�blicos'
'E'=	'Outro curso'
'F'=	'N�o frequentei cursos';

VALUE $Q034_ 
'A'=	'Curso profissionalizante'
'B'=	'Curso de l�ngua estrangeira'
'C'=	'Curso de computa��o ou inform�tica'
'D'=	'N�o faltou nenhum desses';

VALUE $Q035_ 
'A'=	'Sim'
'B'=	'N�o (passe para a pergunta 38)';

VALUE $Q036_ 
'A'=	'Curso presencial em escola p�blica'
'B'=	'Curso presencial em escola particular'
'C'=	'Curso presencial na empresa em que trabalhava'
'D'=	'Curso em tele-sala'
'E'=	'Curso promovido por institui��o religiosa ou filantr�pica'
'F'=	'Curso a dist�ncia (via r�dio, televis�o, internet, correio, com apostilas)'
'G'=	'Curso na Unidade prisional/ Socioeducativa'
'H'=	'N�o frequento/ frequentei';

VALUE $Q037_ 
'A'=	'Diurno.'
'B'=	'Noturno.'
'C'=	'N�o cursei';

VALUE $Q038_ 
'A'=	'Sim'
'B'=	'N�o';

VALUE $Q039A_ 
'B'=	'N�o'
'A'=	'Sim';

VALUE $Q039B_ 
'B'=	'N�o'
'A'=	'Sim';

VALUE $Q039C_ 
'B'=	'N�o'
'A'=	'Sim';

VALUE $Q039D_ 
'B'=	'N�o'
'A'=	'Sim';

VALUE $Q039E_ 
'B'=	'N�o'
'A'=	'Sim';

VALUE $Q039F_ 
'B'=	'N�o'
'A'=	'Sim';

VALUE $Q039G_ 
'B'=	'N�o'
'A'=	'Sim';

VALUE $Q039H_ 
'B'=	'N�o'
'A'=	'Sim';

VALUE $Q039I_ 
'B'=	'N�o'
'A'=	'Sim';

VALUE $Q039J_ 
'B'=	'N�o'
'A'=	'Sim';

VALUE $Q039K_ 
'B'=	'N�o'
'A'=	'Sim';

VALUE $Q039L_ 
'B'=	'N�o'
'A'=	'Sim';

VALUE $Q040A_ 
'B'=	'N�o'
'A'=	'Sim';

VALUE $Q040B_ 
'B'=	'N�o'
'A'=	'Sim';

VALUE $Q040C_ 
'B'=	'N�o'
'A'=	'Sim';

VALUE $Q040D_ 
'B'=	'N�o'
'A'=	'Sim';

VALUE $Q040E_ 
'B'=	'N�o'
'A'=	'Sim';

VALUE $Q040F_ 
'B'=	'N�o'
'A'=	'Sim';

VALUE $Q040G_
'B'=	'N�o'
'A'=	'Sim';

DATA QUESTIONARIO_ENCCEJA_PPL;

INFILE 'C:\MICRODADOS_ENCCEJA_NACIONAL_PPL_QSE_2019.csv' /*Endere�o do arquivo em seu computador. Por exemplo: C:\arquivo.csv*/
        LRECL=169
		FIRSTOBS=2
        DLM=','
		MISSOVER
        DSD ;
    INPUT
        Q001             : $CHAR1.
        Q002             : $CHAR1.
        Q003             : $CHAR1.
        Q004             : $CHAR1.
        Q005             : $CHAR1.
        Q006             : $CHAR1.
        Q007A            : $CHAR1.
        Q007B            : $CHAR1.
        Q007C            : $CHAR1.
        Q007D            : $CHAR1.
        Q007E            : $CHAR1.
        Q007F            : $CHAR1.
        Q007G            : $CHAR1.
        Q008             : $CHAR1.
        Q009             : $CHAR1.
        Q010             : $CHAR1.
        Q011             : $CHAR1.
        Q012             : $CHAR1.
        Q013             : $CHAR1.
        Q014             : $CHAR1.
        Q015             : $CHAR1.
        Q016             : $CHAR1.
        Q017             : $CHAR1.
        Q018             : $CHAR1.
        Q019A            : $CHAR1.
        Q019B            : $CHAR1.
        Q019C            : $CHAR1.
        Q019D            : $CHAR1.
        Q020             : $CHAR1.
		Q021_1			 : $CHAR1.
		Q021_2			 : $CHAR1.
		Q021_3			 : $CHAR1.
		Q021_4			 : $CHAR1.
		Q021_5			 : $CHAR1.
		Q022_1			 : $CHAR1.
		Q022_2			 : $CHAR1.
		Q022_3			 : $CHAR1.
		Q022_4			 : $CHAR1.
		Q022_5			 : $CHAR1.
        Q023A            : $CHAR1.
        Q023B            : $CHAR1.
        Q023C            : $CHAR1.
        Q023D            : $CHAR1.
        Q023E            : $CHAR1.
        Q024             : $CHAR1.
        Q025             : $CHAR1.
        Q026             : $CHAR1.
        Q027             : $CHAR1.
        Q028             : $CHAR1.
        Q029             : $CHAR1.
		Q030_1           : $CHAR1.
		Q030_2           : $CHAR1.
		Q030_3           : $CHAR1.
		Q030_4           : $CHAR1.
		Q030_5           : $CHAR1.
		Q030_6           : $CHAR1.
		Q030_7           : $CHAR1.
		Q030_8           : $CHAR1.
        Q031             : $CHAR1.
        Q032             : $CHAR1.
        Q033             : $CHAR1.
        Q034             : $CHAR1.
        Q035             : $CHAR1.
        Q036             : $CHAR1.
        Q037             : $CHAR1.
        Q038             : $CHAR1.
        Q039A            : $CHAR1.
        Q039B            : $CHAR1.
        Q039C            : $CHAR1.
        Q039D            : $CHAR1.
        Q039E            : $CHAR1.
        Q039F            : $CHAR1.
        Q039G            : $CHAR1.
        Q039H            : $CHAR1.
        Q039I            : $CHAR1.
        Q039J            : $CHAR1.
        Q039K            : $CHAR1.
        Q039L            : $CHAR1.
        Q040A            : $CHAR1.
        Q040B            : $CHAR1.
        Q040C            : $CHAR1.
        Q040D            : $CHAR1.
        Q040E            : $CHAR1.
        Q040F            : $CHAR1.
        Q040G            : $CHAR1.;

ATTRIB	  Q001      FORMAT=$Q001_.; 
ATTRIB	  Q002      FORMAT=$Q002_.;
ATTRIB	  Q003      FORMAT=$Q003_.; 
ATTRIB	  Q004      FORMAT=$Q004_.; 
ATTRIB	  Q005      FORMAT=$Q005_.; 
ATTRIB	  Q006      FORMAT=$Q006_.; 
ATTRIB	  Q007A     FORMAT=$Q007A_.; 
ATTRIB	  Q007B     FORMAT=$Q007B_.; 
ATTRIB	  Q007C     FORMAT=$Q007C_.; 
ATTRIB	  Q007D     FORMAT=$Q007D_.; 
ATTRIB	  Q007E     FORMAT=$Q007E_.; 
ATTRIB	  Q007F     FORMAT=$Q007F_.; 
ATTRIB	  Q007G     FORMAT=$Q007G_.; 
ATTRIB	  Q008      FORMAT=$Q008_.;
ATTRIB	  Q009      FORMAT=$Q009_.;
ATTRIB	  Q010      FORMAT=$Q010_.; 
ATTRIB	  Q011      FORMAT=$Q011_.; 
ATTRIB	  Q012      FORMAT=$Q012_.; 
ATTRIB	  Q013      FORMAT=$Q013_.; 
ATTRIB	  Q014      FORMAT=$Q014_.; 
ATTRIB	  Q015      FORMAT=$Q015_.; 
ATTRIB	  Q016      FORMAT=$Q016_.;
ATTRIB	  Q017      FORMAT=$Q017_.;
ATTRIB	  Q018      FORMAT=$Q018_.;
ATTRIB	  Q019A     FORMAT=$Q019A_.;
ATTRIB	  Q019B     FORMAT=$Q019B_.;
ATTRIB	  Q019C     FORMAT=$Q019C_.;
ATTRIB	  Q019D     FORMAT=$Q019D_.; 
ATTRIB	  Q020      FORMAT=$Q020_.; 
ATTRIB	  Q023A     FORMAT=$Q023A_.;
ATTRIB	  Q023B     FORMAT=$Q023B_.; 
ATTRIB	  Q023C     FORMAT=$Q023C_.; 
ATTRIB	  Q023D     FORMAT=$Q023D_.; 
ATTRIB	  Q023E     FORMAT=$Q023E_.; 
ATTRIB	  Q024      FORMAT=$Q024_.; 
ATTRIB	  Q025      FORMAT=$Q025_.; 
ATTRIB	  Q026      FORMAT=$Q026_.; 
ATTRIB	  Q027      FORMAT=$Q027_.; 
ATTRIB	  Q028      FORMAT=$Q028_.; 
ATTRIB	  Q029      FORMAT=$Q029_.; 
ATTRIB	  Q031      FORMAT=$Q031_.; 
ATTRIB	  Q032      FORMAT=$Q032_.; 
ATTRIB	  Q033      FORMAT=$Q033_.; 
ATTRIB	  Q034      FORMAT=$Q034_.; 
ATTRIB	  Q035      FORMAT=$Q035_.; 
ATTRIB	  Q036      FORMAT=$Q036_.; 
ATTRIB	  Q037      FORMAT=$Q037_.; 
ATTRIB	  Q038      FORMAT=$Q038_.; 
ATTRIB	  Q039A     FORMAT=$Q039A_.; 
ATTRIB	  Q039B     FORMAT=$Q039B_.; 
ATTRIB	  Q039C     FORMAT=$Q039C_.; 
ATTRIB	  Q039D     FORMAT=$Q039D_.; 
ATTRIB	  Q039E     FORMAT=$Q039E_.; 
ATTRIB	  Q039F     FORMAT=$Q039F_.; 
ATTRIB	  Q039G     FORMAT=$Q039G_.; 
ATTRIB	  Q039H     FORMAT=$Q039H_.; 
ATTRIB	  Q039I     FORMAT=$Q039I_.; 
ATTRIB	  Q039J     FORMAT=$Q039J_.; 
ATTRIB	  Q039K     FORMAT=$Q039K_.; 
ATTRIB	  Q039L     FORMAT=$Q039L_.; 
ATTRIB	  Q040A     FORMAT=$Q040A_.; 
ATTRIB	  Q040B     FORMAT=$Q040B_.; 
ATTRIB	  Q040C     FORMAT=$Q040C_.; 
ATTRIB	  Q040D     FORMAT=$Q040D_.; 
ATTRIB	  Q040E     FORMAT=$Q040E_.; 
ATTRIB	  Q040F     FORMAT=$Q040F_.; 
ATTRIB	  Q040G     FORMAT=$Q040G_.;


LABEL

Q001='Voc� est� inserido em que tipo de Unidade?'
Q002='Como voc� se considera? (Marque apenas uma resposta)'
Q003='Qual o seu estado civil? (Marque apenas uma resposta)'
Q004='Onde voc� morava antes de ser privado de sua liberdade? (Marque apenas uma resposta)'
Q005='Como era a sua moradia? (Marque apenas uma resposta)'
Q006='A sua moradia estava localizada em: (Marque apenas uma resposta)'
Q007A='Quem morava com voc�? (Marque mais de uma resposta, se for o caso) - Morava sozinho(a)'
Q007B='Quem morava com voc�? (Marque mais de uma resposta, se for o caso) - Pai'
Q007C='Quem morava com voc�? (Marque mais de uma resposta, se for o caso) - M�e'
Q007D='Quem morava com voc�? (Marque mais de uma resposta, se for o caso) - Esposo(a) / companheiro(a)'
Q007E='Quem morava com voc�? (Marque mais de uma resposta, se for o caso) - Filhos(as)'
Q007F='Quem morava com voc�? (Marque mais de uma resposta, se for o caso) - Irm�os(�s)'
Q007G='Quem morava com voc�? (Marque mais de uma resposta, se for o caso) - Outros parentes, amigos(as) ou colegas'
Q008='Quantas pessoas moravam com voc�? (incluindo filhos, irm�os, parentes e amigos - Marque apenas uma resposta)'
Q009='Quantos(as) filhos(as) voc� tem? (Marque apenas uma resposta)'
Q010='Com quem est�o seus filhos? (Marque apenas uma resposta)'
Q011='Qual � o n�vel de escolaridade do seu pai? (Marque apenas uma resposta)'
Q012='Qual � o n�vel de escolaridade da sua m�e? (Marque apenas uma resposta)'
Q013='Voc� tinha alguma renda antes de estar privado de liberdade? (Marque apenas uma resposta)'
Q014='Qual era a sua renda mensal, aproximadamente? (Marque apenas uma resposta)'
Q015='Somando a sua renda com a renda das pessoas que moravam com voc�, quanto era, aproximadamente, a renda familiar mensal? (Marque apenas uma resposta)'
Q016='Voc� realiza algum trabalho na Unidade em que est� inserido? (Marque apenas uma resposta)'
Q017='Antes de ter sua liberdade privada, voc� trabalhou ou teve alguma atividade remunerada durante seus estudos? (Marque apenas uma resposta)'
Q018='Com que idade voc� come�ou a trabalhar? (Marque apenas uma resposta)'
Q019A='Como voc� avalia ter trabalhado durante seus estudos? (Marque mais de uma resposta, se for o caso) - Atrapalhou meus estudos'
Q019B='Como voc� avalia ter trabalhado durante seus estudos? (Marque mais de uma resposta, se for o caso) - Possibilitou meus estudos'
Q019C='Como voc� avalia ter trabalhado durante seus estudos? (Marque mais de uma resposta, se for o caso) - Possibilitou meu crescimento pessoal'
Q019D='Como voc� avalia ter trabalhado durante seus estudos? (Marque mais de uma resposta, se for o caso) - N�o atrapalhou meus estudos'
Q020='Quantas horas voc� trabalhava? (Marque apenas uma resposta)'
Q021_1='Indique o grau de import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar. Ajudar meus pais nas despesas com a casa.'
Q021_2='Indique o grau de import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar. Sustentar minha fam�lia (esposo/a, companheiro /a, filhos/as etc.).'
Q021_3='Indique o grau de import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar. Ser independente (ganhar meu pr�prio dinheiro).'
Q021_4='Indique o grau de import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar. Adquirir experi�ncia.'
Q021_5='Indique o grau de import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar. Custear/ pagar meus estudos.'
Q022_1='Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA. Testar meus conhecimentos.'
Q022_2='Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA. Prosseguir os estudos.'
Q022_3='Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA. Acelerar meus estudos.'
Q022_4='Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA. Conseguir um emprego.'
Q022_5='Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA. Obter a certifica��o do Ensino Fundamental ou Ensino M�dio.'
Q023A='Quais as tr�s principais contribui��es ao concluir o Ensino Fundamental ou M�dio? (Aten��o: indique apenas as tr�s principais alternativas) - Obten��o de um certificado de conclus�o do Ensino Fundamental ou M�dio'
Q023B='Quais as tr�s principais contribui��es ao concluir o Ensino Fundamental ou M�dio? (Aten��o: indique apenas as tr�s principais alternativas) - Forma��o b�sica necess�ria para obter um emprego melhor'
Q023C='Quais as tr�s principais contribui��es ao concluir o Ensino Fundamental ou M�dio? (Aten��o: indique apenas as tr�s principais alternativas) - Amplia��o de minha forma��o pessoal'
Q023D='Quais as tr�s principais contribui��es ao concluir o Ensino Fundamental ou M�dio? (Aten��o: indique apenas as tr�s principais alternativas) - Forma��o b�sica necess�ria para continuar os estudos'
Q023E='Quais as tr�s principais contribui��es ao concluir o Ensino Fundamental ou M�dio? (Aten��o: indique apenas as tr�s principais alternativas) - Atender � expectativa de meus pais sobre meus estudos'
Q024='Voc� j� frequentou alguma vez a escola regular? (Marque apenas uma resposta)'
Q025='Voc� j� reprovou alguma vez? (Marque apenas uma resposta)'
Q026='Se voc� j� frequentou a escola regular, em que s�rie voc� deixou de estudar? (Marque apenas uma resposta)'
Q027='Em que tipo de escola voc� cursou maior parte do Ensino Fundamental ou Ensino M�dio? (Marque apenas uma resposta)'
Q028='Voc� deixou de estudar durante o Ensino Fundamental ou Ensino M�dio? (Marque apenas uma resposta)'
Q029='Pensando nos seus conhecimentos, como voc� considera o seu preparo para conseguir um emprego ou exercer alguma atividade profissional? (Marque apenas uma resposta)'
Q030_1='Se voc� n�o frequentou ou abandonou a escola regular, em que medida os motivos abaixo influenciaram nesse fato? Inexist�ncia de vaga em escola p�blica'
Q030_2='Se voc� n�o frequentou ou abandonou a escola regular, em que medida os motivos abaixo influenciaram nesse fato? Aus�ncia de escola perto de casa'
Q030_3='Se voc� n�o frequentou ou abandonou a escola regular, em que medida os motivos abaixo influenciaram nesse fato? Falta de interesse em estudar'
Q030_4='Se voc� n�o frequentou ou abandonou a escola regular, em que medida os motivos abaixo influenciaram nesse fato? Trabalho: falta de tempo para estudar'
Q030_5='Se voc� n�o frequentou ou abandonou a escola regular, em que medida os motivos abaixo influenciaram nesse fato? Motivos pessoais: casamentos/ filhos(as)'
Q030_6='Se voc� n�o frequentou ou abandonou a escola regular, em que medida os motivos abaixo influenciaram nesse fato? Falta de apoio familiar'
Q030_7='Se voc� n�o frequentou ou abandonou a escola regular, em que medida os motivos abaixo influenciaram nesse fato? Problemas de sa�de ou acidente comigo ou familiares'
Q030_8='Se voc� n�o frequentou ou abandonou a escola regular, em que medida os motivos abaixo influenciaram nesse fato? Discrimina��o de ra�a, sexo, cor idade ou econ�mica.'
Q031='Quantos anos de idade voc� tinha quando deixou de frequentar a escola regular? (Marque apenas uma resposta)'
Q032='Qual principal motivo faria voc� estudar ou continuar estudando? (Marque apenas uma resposta)'
Q033='Quais dos cursos abaixo voc� frequentou ou frequenta? (Marque apenas uma resposta)'
Q034='Qual curso ou forma��o fez mais falta para a sua vida? (Marque apenas uma resposta)'
Q035='Voc� frequentou curso de Educa��o de Jovens e Adultos - EJA? (Marque apenas uma resposta)'
Q036='Como voc� realiza ou realizou o curso de EJA? (Marque apenas uma resposta)'
Q037='Em que per�odo voc� cursou a EJA? (Marque apenas uma resposta)'
Q038='Voc�, hoje, tem acesso a livros em biblioteca ou sala de leitura em sua Unidade?'
Q039A='Voc� j� sofreu algum tipo de discrimina��o? (Marque mais de uma resposta, se for o caso) - Discrimina��o econ�mica'
Q039B='Voc� j� sofreu algum tipo de discrimina��o? (Marque mais de uma resposta, se for o caso) - Discrimina��o �tnica, racial ou de cor'
Q039C='Voc� j� sofreu algum tipo de discrimina��o? (Marque mais de uma resposta, se for o caso) - Discrimina��o de g�nero (por ser mulher ou por ser homem'
Q039D='Voc� j� sofreu algum tipo de discrimina��o? (Marque mais de uma resposta, se for o caso) - Por ser ou ter sido identificado como homossexual / gay, l�sbica, bissexual, travesti ou transexual'
Q039E='Voc� j� sofreu algum tipo de discrimina��o? (Marque mais de uma resposta, se for o caso) - Por causa de sua religi�o'
Q039F='Voc� j� sofreu algum tipo de discrimina��o? (Marque mais de uma resposta, se for o caso) - Por n�o ter religi�o'
Q039G='Voc� j� sofreu algum tipo de discrimina��o? (Marque mais de uma resposta, se for o caso) - Por causa do local de seu nascimento (em outra cidade, no interior, em outra regi�o, em outro pa�s, etc.)' 
Q039H='Voc� j� sofreu algum tipo de discrimina��o? (Marque mais de uma resposta, se for o caso) - Por causa da sua idade'
Q039I='Voc� j� sofreu algum tipo de discrimina��o? (Marque mais de uma resposta, se for o caso) - Por ser pessoa com defici�ncia f�sica ou intelectual'
Q039J='Voc� j� sofreu algum tipo de discrimina��o? (Marque mais de uma resposta, se for o caso) - Por causa de sua apar�ncia f�sica (gordo/a, magro/a, alto/ a, baixo/a etc.)'
Q039K='Voc� j� sofreu algum tipo de discrimina��o? (Marque mais de uma resposta, se for o caso) - Por causa do lugar de sua moradia'
Q039L='Voc� j� sofreu algum tipo de discrimina��o? (Marque mais de uma resposta, se for o caso) - Nunca sofri os tipos de discrimina��o acima mencionados'
Q040A='Qual(is) o(s) documento(s) abaixo voc� possui? (Marque mais de uma resposta, se for o caso) - Certid�o de nascimento'
Q040B='Qual(is) o(s) documento(s) abaixo voc� possui? (Marque mais de uma resposta, se for o caso) - Carteira de Identidade'
Q040C='Qual(is) o(s) documento(s) abaixo voc� possui? (Marque mais de uma resposta, se for o caso) - CPF'
Q040D='Qual(is) o(s) documento(s) abaixo voc� possui? (Marque mais de uma resposta, se for o caso) - Carteira de Trabalho'
Q040E='Qual(is) o(s) documento(s) abaixo voc� possui? (Marque mais de uma resposta, se for o caso) - Carteira de Motorista'
Q040F='Qual(is) o(s) documento(s) abaixo voc� possui? (Marque mais de uma resposta, se for o caso) - Titulo de Eleitor'
Q040G='Qual(is) o(s) documento(s) abaixo voc� possui? (Marque mais de uma resposta, se for o caso) - N�o tenho nenhum dos documentos acima mencionados';
RUN;
