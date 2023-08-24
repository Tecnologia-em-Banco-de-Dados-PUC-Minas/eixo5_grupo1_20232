**************************************************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                         			     */ 
/*                                   			                                                                             */
/*  Coordena��o-Geral de Medidas da Educa��o B�sica              		    		     */
/*-------------------------------------------------------------------------------------					     */
/*  PROGRAMA:                                                                                         			     */
/*               INPUT_SPSS_MICRODADOS_ENCCEJA_2018_QUESTIONARIO_PPL	                            	     */
/*-------------------------------------------------------------------------------------					     */
/* DESCRICAO: PROGRAMA PARA LEITURA DOS MICRODADOS DO ENCCEJA 2018- REGULAR EXTERIOR    */
/* COM DADOS DE CADASTRO, RESPOSTAS E QUESTION�RIO SOCIOECON�MICO		     */
/*		 							     */
/**************************************************************************************************************************************/
/**************************************************************************************************************************************/ 
/* Obs:                                                                                				     */
/* 		                                                                               			     */
/* Para abrir os microdados, � necess�rio salvar este programa e 				     */
/* o arquivo "QUESTIONARIO_ENCCEJA_PPL_NAC.csv" do ENCCEJA no diret�rio C:\ do computador.	     */
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
  /FILE="C:\QUESTIONARIO_ENCCEJA_PPL_NAC.csv" 
  /DELCASE=LINE 
  /DELIMITERS="," 
  /ARRANGEMENT=DELIMITED 
  /FIRSTCASE=2 
  /IMPORTCASE=ALL 
  /VARIABLES= 
  Q001 A1 
  Q002 A1 
  Q003 A1 
  Q004 A1 
  Q005 A1 
  Q006 A1 
  Q007A A1
  Q007B A1 
  Q007C A1 
  Q007D A1 
  Q007E A1 
  Q007F A1 
  Q007G A1
  Q008 A1 
  Q009 A1 
  Q010 A1 
  Q011 A1 
  Q012 A1 
  Q013 A1 
  Q014 A1 
  Q015 A1 
  Q016 A1 
  Q017 A1 
  Q018 A1 
  Q019A A1 
  Q019B A1 
  Q019C A1 
  Q019D A1 
  Q020 A1 
  Q021.1 F1.0
  Q021.2 F1.0
  Q021.3 F1.0
  Q021.4 F1.0
  Q021.5 F1.0
  Q022.1 F1.0
  Q022.2 F1.0
  Q022.3 F1.0
  Q022.4 F1.0
  Q022.5 F1.0
  Q023A A1 
  Q023B A1 
  Q023C A1 
  Q023D A1 
  Q023E A1 
  Q024 A1 
  Q025 A1 
  Q026 A1 
  Q027 A1 
  Q028 A1 
  Q029 A1 
  Q030.1 F1.0
  Q030.2 F1.0
  Q030.3 F1.0
  Q030.4 F1.0
  Q030.5 F1.0
  Q030.6 F1.0
  Q030.7 F1.0
  Q030.8 F1.0
  Q031 A1 
  Q032 A1 
  Q033 A1 
  Q034 A1 
  Q035 A1 
  Q036 A1 
  Q037 A1 
  Q038 A1 
  Q039A A1 
  Q039B A1 
  Q039C A1 
  Q039D A1 
  Q039E A1 
  Q039F A1 
  Q039G A1 
  Q039H A1 
  Q039I A1 
  Q039J A1 
  Q039K A1 
  Q039L A1 
  Q040A A1 
  Q040B A1 
  Q040C A1 
  Q040D A1 
  Q040E A1 
  Q040F A1 
  Q040G A1. 
CACHE. 
EXECUTE. 
DATASET NAME QUESTIONARIO_ENCCEJA_PPL_NAC WINDOW=FRONT.


VARIABLE LABELS	Q001 'Voc� est� inserido em que tipo de Unidade?'.
VALUE LABELS Q001
'A'	'Prisional (maiores de 18 anos)'
'B'	'Socioeducativa (menores de 18 anos)'.
VARIABLE LABELS	Q002 'Como voc� se considera? (Marque apenas uma resposta)'.
VALUE LABELS Q002
'A'	'Branco(a)'
'B'	'Pardo(a)'
'C'	'Preto(a)'
'D'	'Amarelo(a)'
'E'	'Ind�gena'.
VARIABLE LABELS	Q003 'Qual o seu estado civil? (Marque apenas uma resposta)'.
VALUE LABELS Q003
'A'	'Solteiro(a)'
'B'	'Casado(a)'
'C'	'Possui rela��o est�vel com um(a) companheiro(a)/amasiado(a)'
'D'	'Separado(a) / divorciado(a) / desquitado(a).'
'E'	'Vi�vo(a)'.
VARIABLE LABELS	Q004 'Onde voc� morava antes de ser privado de sua liberdade? (Marque apenas uma resposta)'.
VALUE LABELS Q004
'A'	'Em casa ou apartamento, com minha fam�lia'
'B'	'Em casa ou apartamento, sozinho(a)'
'C'	'Em quarto ou c�modo alugado, sozinho(a)'
'D'	'Em habita��o coletiva: albergue, hotel, hospedaria, quartel, pensionato, rep�blica etc.'
'E'	'Na rua'
'F'	'N�o tinha moradia fixa'.
VARIABLE LABELS	Q005 'Como era a sua moradia? (Marque apenas uma resposta)'.
VALUE LABELS Q005
'A'	'Pr�pria'
'B'	'Alugada'
'C'	'Cedida'
'D'	'Eu morava na rua'.
VARIABLE LABELS	Q006 'A sua moradia estava localizada em: (Marque apenas uma resposta)'.
VALUE LABELS Q006
'A'	'Zona rural'
'B'	'Zona urbana'
'C'	'Comunidade ind�gena'
'D'	'Comunidade quilombola'.
VARIABLE LABELS	Q007A 'Quem morava com voc�? (Marque mais de uma resposta, se for o caso) - Morava sozinho(a)'.
VALUE LABELS Q007A
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS	Q007B 'Quem morava com voc�? (Marque mais de uma resposta, se for o caso) - Pai'.
VALUE LABELS Q007B
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS	Q007C 'Quem morava com voc�? (Marque mais de uma resposta, se for o caso) - M�e'.
VALUE LABELS Q007C
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS	Q007D 'Quem morava com voc�? (Marque mais de uma resposta, se for o caso) - Esposo(a) / companheiro(a)'.
VALUE LABELS Q007D
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS	Q007E 'Quem morava com voc�? (Marque mais de uma resposta, se for o caso) - Filhos(as)'.
VALUE LABELS Q007E
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS	Q007F 'Quem morava com voc�? (Marque mais de uma resposta, se for o caso) - Irm�os(�s)'.
VALUE LABELS Q007F
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS	Q007G 'Quem morava com voc�? (Marque mais de uma resposta, se for o caso) - Outros parentes, amigos(as) ou colegas'.
VALUE LABELS Q007G
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS	Q008 'Quantas pessoas moravam com voc�? (incluindo filhos, irm�os, parentes e amigos - Marque apenas uma resposta)'.
VALUE LABELS Q008
'A'	'Morava sozinho'
'B'	'Uma a tr�s'
'C'	'Quatro a sete'
'D'	'Oito a dez'
'E'	'Mais de dez'.
VARIABLE LABELS	Q009 'Quantos(as) filhos(as) voc� tem? (Marque apenas uma resposta)'.
VALUE LABELS Q009
'A'	'Um(a)'
'B'	'Dois(duas)'
'C'	'Tr�s ou mais'
'D'	'N�o tenho filhos(as). (Passe para a quest�o 11)'.
VARIABLE LABELS	Q010 'Com quem est�o seus filhos? (Marque apenas uma resposta)'.
VALUE LABELS Q010
'A'	'Com a m�e deles / com o pai deles'
'B'	'Com minha fam�lia ou com parentes'
'C'	'Est�o em uma institui��o'
'D'	'N�o sei'.
VARIABLE LABELS	Q011 'Qual � o n�vel de escolaridade do seu pai? (Marque apenas uma resposta)'.
VALUE LABELS Q011
'A'	'Da 1� � 4� s�rie do Ensino Fundamental (antigo prim�rio, 1� grau)'
'B'	'Da 5� � 8� s�rie do Ensino Fundamental (antigo gin�sio, 1� grau)'
'C'	'Ensino M�dio (antigo 2� grau)'
'D'	'Ensino Superior'
'E'	'Especializa��o'
'F'	'Mestrado'
'G'	'Doutorado'
'H'	'N�o estudou'
'I'	'N�o sei'.
VARIABLE LABELS	Q012 'Qual � o n�vel de escolaridade da sua m�e? (Marque apenas uma resposta)'.
VALUE LABELS Q012
'A'	'Da 1� � 4� s�rie do Ensino Fundamental (antigo prim�rio, 1� grau)'
'B'	'Da 5� � 8� s�rie do Ensino Fundamental (antigo gin�sio, 1� grau)'
'C'	'Ensino M�dio (antigo 2� grau)'
'D'	'Ensino Superior'
'E'	'Especializa��o'
'F'	'Mestrado'
'G'	'Doutorado'
'H'	'N�o estudou'
'I'	'N�o sei'.
VARIABLE LABELS	Q013 'Voc� tinha alguma renda antes de estar privado de liberdade? (Marque apenas uma resposta)'.
VALUE LABELS Q013
'A'	'Sim'
'B'	'N�o (passe para a pergunta 15)'.
VARIABLE LABELS	Q014 'Qual era a sua renda mensal, aproximadamente? (Marque apenas uma resposta)'.
VALUE LABELS Q014
'A'	'At� 1 sal�rio m�nimo (at� R$ 954,00)'
'B'	'De 1 a 3 sal�rios m�nimos (de R$ 954,01 at� R$ 2.862,00)'
'C'	'De 3 a 6 sal�rios m�nimos (de R$ 2.862,01 at� R$ 5.724,00)'
'D'	'De 6 a 9 sal�rios m�nimos (de R$ 5.724,01 at� R$ 8.586,00)'
'E'	'De 9 a 12 sal�rios m�nimos (de R$ 8.586,01 at� R$ 11.448,00)'
'F'	'De 12 a 15 sal�rios m�nimos (de R$ 11.448,01 at� R$ 14.310,00)'
'G'	'Mais de 15 sal�rios m�nimos (mais de R$ 14.310,01)'.
VARIABLE LABELS	Q015 'Somando a sua renda com a renda das pessoas que moravam com voc�, quanto era, aproximadamente, a renda familiar mensal? (Marque apenas uma resposta)'.
VALUE LABELS Q015
'A'	'Nenhuma renda'
'B'	'At� 1 sal�rio m�nimo (at� R$ 954,00)'
'C'	'De 1 a 3 sal�rios m�nimos (de R$ 954,01 at� R$ 2.862,00)'
'D'	'De 3 a 6 sal�rios m�nimos (de R$ 2.862,01 at� R$ 5.724,00)'
'E'	'De 6 a 9 sal�rios m�nimos (de R$ 5.724,01 at� R$ 8.586,00)'
'F'	'De 9 a 12 sal�rios m�nimos (de R$ 8.586,01 at� R$ 11.448,00)'
'G'	'De 12 a 15 sal�rios m�nimos (de R$ 11.448,01 at� R$ 14.310,00)'
'H'	'Mais de 15 sal�rios m�nimos (mais de R$ 14.310,01)'.
VARIABLE LABELS	Q016 'Voc� realiza algum trabalho na Unidade em que est� inserido? (Marque apenas uma resposta)'.
VALUE LABELS Q016
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS	Q017 'Antes de ter sua liberdade privada, voc� trabalhou ou teve alguma atividade remunerada durante seus estudos? (Marque apenas uma resposta)'.
VALUE LABELS Q017
'A'	'Sim'
'B'	'N�o, n�o trabalhei enquanto estudava. (passe para a pergunta 22)'
'C'	'N�o, nunca estudei. (passe para a pergunta 22)'.
VARIABLE LABELS	Q018 'Com que idade voc� come�ou a trabalhar? (Marque apenas uma resposta)'.
VALUE LABELS Q018
'A'	'Antes dos 14 anos'
'B'	'Entre 14 e 16 anos'
'C'	'Entre 17 e 18 anos'
'D'	'Ap�s 18 anos'.
VARIABLE LABELS	Q019A 'Como voc� avalia ter trabalhado durante seus estudos? (Marque mais de uma resposta, se for o caso) - Atrapalhou meus estudos'.
VALUE LABELS Q019A
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS	Q019B 'Como voc� avalia ter trabalhado durante seus estudos? (Marque mais de uma resposta, se for o caso) - Possibilitou meus estudos'.
VALUE LABELS Q019B
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS	Q019C 'Como voc� avalia ter trabalhado durante seus estudos? (Marque mais de uma resposta, se for o caso) - Possibilitou meu crescimento pessoal'.
VALUE LABELS Q019C
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS	Q019D 'Como voc� avalia ter trabalhado durante seus estudos? (Marque mais de uma resposta, se for o caso) - N�o atrapalhou meus estudos'.
VALUE LABELS Q019D
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS	Q020 'Quantas horas voc� trabalhava? (Marque apenas uma resposta)'.
VALUE LABELS Q020
'A'	'Sem jornada fixa, at� 10 horas semanais'
'B'	'De 11 a 20 horas semanais'
'C'	'De 21 a 30 horas semanais'
'D'	'De 31 a 40 horas semanais'
'E'	'Mais de 40 horas semanais'.
VARIABLE LABELS	Q021.1 'Indique o grau de import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar. Ajudar meus pais nas despesas com a casa.'.
VARIABLE LABELS	Q021.2 'Indique o grau de import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar. Sustentar minha fam�lia (esposo/a, companheiro /a, filhos/as etc.).'.
VARIABLE LABELS	Q021.3 'Indique o grau de import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar. Ser independente (ganhar meu pr�prio dinheiro).'.
VARIABLE LABELS	Q021.4 'Indique o grau de import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar. Adquirir experi�ncia.'.
VARIABLE LABELS	Q021.5 'Indique o grau de import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar. Custear/ pagar meus estudos.'.
VARIABLE LABELS	Q022.1 'Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA. Testar meus conhecimentos.'.
VARIABLE LABELS	Q022.2 'Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA. Prosseguir os estudos.'.
VARIABLE LABELS	Q022.3 'Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA. Acelerar meus estudos.'.
VARIABLE LABELS	Q022.4 'Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA. Conseguir um emprego.'.
VARIABLE LABELS	Q022.5 'Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA. Obter a certifica��o do Ensino Fundamental ou Ensino M�dio.'.
VARIABLE LABELS	Q023A 'Quais as tr�s principais contribui��es ao concluir o Ensino Fundamental ou M�dio? (Aten��o: indique apenas as tr�s principais alternativas) - Obten��o de um certificado de conclus�o do Ensino Fundamental ou M�dio'.
VALUE LABELS Q023A
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS	Q023B 'Quais as tr�s principais contribui��es ao concluir o Ensino Fundamental ou M�dio? (Aten��o: indique apenas as tr�s principais alternativas) - Forma��o b�sica necess�ria para obter um emprego melhor'.
VALUE LABELS Q023B
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS	Q023C 'Quais as tr�s principais contribui��es ao concluir o Ensino Fundamental ou M�dio? (Aten��o: indique apenas as tr�s principais alternativas) - Amplia��o de minha forma��o pessoal'.
VALUE LABELS Q023C
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS	Q023D'Quais as tr�s principais contribui��es ao concluir o Ensino Fundamental ou M�dio? (Aten��o: indique apenas as tr�s principais alternativas) - Forma��o b�sica necess�ria para continuar os estudos'.
VALUE LABELS Q023D
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS	Q023E'Quais as tr�s principais contribui��es ao concluir o Ensino Fundamental ou M�dio? (Aten��o: indique apenas as tr�s principais alternativas) - Atender � expectativa de meus pais sobre meus estudos'.
VALUE LABELS Q023E
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS	Q024 'Voc� j� frequentou alguma vez a escola regular? (Marque apenas uma resposta)'.
VALUE LABELS Q024
'A'	'Sim'
'B'	'N�o (passe para a pergunta 29)'.
VARIABLE LABELS	Q025 'Voc� j� reprovou alguma vez? (Marque apenas uma resposta)'.
VALUE LABELS Q025
'A'	'N�o, nunca'
'B'	'Sim, uma vez'
'C'	'Sim, duas vezes'
'D'	'Sim, tr�s vezes ou mais'.
VARIABLE LABELS	Q026 'Se voc� j� frequentou a escola regular, em que s�rie voc� deixou de estudar? (Marque apenas uma resposta)'.
VALUE LABELS Q026
'A'	'N�o deixei de estudar'
'B'	'1� s�rie do Ensino Fundamental (antigo prim�rio, 1� grau)'
'C'	'2� s�rie do Ensino Fundamental (antigo prim�rio, 1� grau)'
'D'	'3� s�rie do Ensino Fundamental (antigo prim�rio, 1� grau)'
'E'	'4� s�rie do Ensino Fundamental (antigo prim�rio, 1� grau)'
'F'	'5� s�rie do Ensino Fundamental (antigo gin�sio, 1� grau)'
'G'	'6� s�rie do Ensino Fundamental (antigo gin�sio, 1� grau)'
'H'	'7� s�rie do Ensino Fundamental (antigo gin�sio, 1� grau)'
'I'	'8� s�rie do Ensino Fundamental (antigo gin�sio, 1� grau)'
'J'	'1� s�rie do Ensino M�dio (antigo 2� grau)'
'K'	'2� s�rie do Ensino M�dio (antigo 2� grau)'
'L'	'3� s�rie do Ensino M�dio (antigo 2� grau)'.
VARIABLE LABELS	Q027 'Em que tipo de escola voc� cursou maior parte do Ensino Fundamental ou Ensino M�dio? (Marque apenas uma resposta)'.
VALUE LABELS Q027
'A'	'Em escola p�blica'
'B'	'Em escola particular'
'C'	'Em escola ind�gena'
'D'	'Em escola situada em comunidade quilombola'
'E'	'Em escola da Unidade Prisional/ Socioeducativa'.
VARIABLE LABELS	Q028 'Voc� deixou de estudar durante o Ensino Fundamental ou Ensino M�dio? (Marque apenas uma resposta)'.
VALUE LABELS Q028
'A'	'N�o.'
'B'	'Sim, por um ano'
'C'	'Sim, por dois anos'
'D'	'Sim, por tr�s anos'
'E'	'Sim, por quatro anos ou mais'.
VARIABLE LABELS	Q029 'Pensando nos seus conhecimentos, como voc� considera o seu preparo para conseguir um emprego ou exercer alguma atividade profissional? (Marque apenas uma resposta)'.
VALUE LABELS Q029
'A'	'Eu me considero preparado(a) para entrar no mercado de trabalho'
'B'	'Apesar de ter frequentado uma boa escola, eu me considero despreparado(a) para conseguir um bom emprego'
'C'	'Eu me considero despreparado(a) devido � baixa qualidade do ensino de minha escola'
'D'	'Eu me considero preparado, mas n�o sei se o mercado de trabalho me aceitar�'
'E'	'N�o sei'.
VARIABLE LABELS Q030.1 'Se voc� n�o frequentou ou abandonou a escola regular, em que medida os motivos abaixo influenciaram nesse fato? Inexist�ncia de vaga em escola p�blica'.
VARIABLE LABELS Q030.2 'Se voc� n�o frequentou ou abandonou a escola regular, em que medida os motivos abaixo influenciaram nesse fato? Aus�ncia de escola perto de casa'.
VARIABLE LABELS Q030.3 'Se voc� n�o frequentou ou abandonou a escola regular, em que medida os motivos abaixo influenciaram nesse fato? Falta de interesse em estudar'.
VARIABLE LABELS Q030.4 'Se voc� n�o frequentou ou abandonou a escola regular, em que medida os motivos abaixo influenciaram nesse fato? Trabalho: falta de tempo para estudar'.
VARIABLE LABELS Q030.5 'Se voc� n�o frequentou ou abandonou a escola regular, em que medida os motivos abaixo influenciaram nesse fato? Motivos pessoais: casamentos/ filhos(as)'.
VARIABLE LABELS Q030.6 'Se voc� n�o frequentou ou abandonou a escola regular, em que medida os motivos abaixo influenciaram nesse fato? Falta de apoio familiar'.
VARIABLE LABELS Q030.7 'Se voc� n�o frequentou ou abandonou a escola regular, em que medida os motivos abaixo influenciaram nesse fato? Problemas de sa�de ou acidente comigo ou familiares'.
VARIABLE LABELS Q030.8 'Se voc� n�o frequentou ou abandonou a escola regular, em que medida os motivos abaixo influenciaram nesse fato? Discrimina��o de ra�a, sexo, cor idade ou econ�mica.'.
VARIABLE LABELS	Q031 'Quantos anos de idade voc� tinha quando deixou de frequentar a escola regular? (Marque apenas uma resposta)'.
VALUE LABELS Q031
'A'	'Menos de 10 anos'
'B'	'Entre 10 e 14 anos'
'C'	'Entre 15 e 18 anos'
'D'	'Entre 19 e 24 anos'
'E'	'Entre 25 e 30 anos'
'F'	'Mais de 30 anos'
'G'	'N�o deixei de frequentar'
'H'	'N�o frequentei'.
VARIABLE LABELS	Q032 'Qual principal motivo faria voc� estudar ou continuar estudando? (Marque apenas uma resposta)'.
VALUE LABELS Q032
'A'	'Conseguir um emprego'
'B'	'Retomar os estudos'
'C'	'Adquirir mais conhecimento, ficar atualizado'
'D'	'Atender � expectativa de meus familiares'
'E'	'N�o pretendo voltar a estudar'.
VARIABLE LABELS	Q033 'Quais dos cursos abaixo voc� frequentou ou frequenta? (Marque apenas uma resposta)'.
VALUE LABELS Q033
'A'	'Curso profissionalizante'
'B'	'Curso de l�ngua estrangeira'
'C'	'Curso de computa��o ou inform�tica'
'D'	'Curso preparat�rio para outros concursos p�blicos'
'E'	'Outro curso'
'F'	'N�o frequentei cursos'.
VARIABLE LABELS	Q034 'Qual curso ou forma��o fez mais falta para a sua vida? (Marque apenas uma resposta)'.
VALUE LABELS Q034
'A'	'Curso profissionalizante'
'B'	'Curso de l�ngua estrangeira'
'C'	'Curso de computa��o ou inform�tica'
'D'	'N�o faltou nenhum desses'.
VARIABLE LABELS	Q035 'Voc� frequentou curso de Educa��o de Jovens e Adultos - EJA? (Marque apenas uma resposta)'.
VALUE LABELS Q035
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS	Q036 'Como voc� realiza ou realizou o curso de EJA? (Marque apenas uma resposta)'.
VALUE LABELS Q036
'A'	'Curso presencial em escola p�blica'
'B'	'Curso presencial em escola particular'
'C'	'Curso presencial na empresa em que trabalhava'
'D'	'Curso em tele-sala'
'E'	'Curso promovido por institui��o religiosa ou filantr�pica'
'F'	'Curso a dist�ncia (via r�dio, televis�o, internet, correio, com apostilas)'
'G'	'Curso na Unidade prisional/ Socioeducativa'
'H'	'N�o frequento/ frequentei'.
VARIABLE LABELS	Q037 'Em que per�odo voc� cursou a EJA? (Marque apenas uma resposta)'.
VALUE LABELS Q037
'A'	'Diurno.'
'B'	'Noturno.'
'C'	'N�o cursei'.
VARIABLE LABELS	Q038 'Voc�, hoje, tem acesso a livros em biblioteca ou sala de leitura em sua Unidade?'.
VALUE LABELS Q038
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS	Q039A 'Voc� j� sofreu algum tipo de discrimina��o? (Marque mais de uma resposta, se for o caso) - Discrimina��o econ�mica'.
VALUE LABELS Q039A
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS	Q039B 'Voc� j� sofreu algum tipo de discrimina��o? (Marque mais de uma resposta, se for o caso) - Discrimina��o �tnica, racial ou de cor'.
VALUE LABELS Q039B
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS	Q039C 'Voc� j� sofreu algum tipo de discrimina��o? (Marque mais de uma resposta, se for o caso) - Discrimina��o de g�nero (por ser mulher ou por ser homem'.
VALUE LABELS Q039C
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS	Q039D 'Voc� j� sofreu algum tipo de discrimina��o? (Marque mais de uma resposta, se for o caso) - Por ser ou ter sido identificado como homossexual / gay, l�sbica, bissexual, travesti ou transexual'.
VALUE LABELS Q039D
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS	Q039E 'Voc� j� sofreu algum tipo de discrimina��o? (Marque mais de uma resposta, se for o caso) - Por causa de sua religi�o'.
VALUE LABELS Q039E
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS	Q039F 'Voc� j� sofreu algum tipo de discrimina��o? (Marque mais de uma resposta, se for o caso) - Por n�o ter religi�o'.
VALUE LABELS Q039F
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS	Q039G 'Voc� j� sofreu algum tipo de discrimina��o? (Marque mais de uma resposta, se for o caso) - Por causa do local de seu nascimento (em outra cidade, no interior, em outra regi�o, em outro pa�s, etc.)'.
VALUE LABELS Q039G
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS	Q039H 'Voc� j� sofreu algum tipo de discrimina��o? (Marque mais de uma resposta, se for o caso) - Por causa da sua idade'.
VALUE LABELS Q039H
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS	Q039I 'Voc� j� sofreu algum tipo de discrimina��o? (Marque mais de uma resposta, se for o caso) - Por ser pessoa com defici�ncia f�sica ou intelectual'.
VALUE LABELS Q039I
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS	Q039J 'Voc� j� sofreu algum tipo de discrimina��o? (Marque mais de uma resposta, se for o caso) - Por causa de sua apar�ncia f�sica (gordo/a, magro/a, alto/ a, baixo/a etc.)'.
VALUE LABELS Q039J
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS	Q039K 'Voc� j� sofreu algum tipo de discrimina��o? (Marque mais de uma resposta, se for o caso) - Por causa do lugar de sua moradia'.
VALUE LABELS Q039K
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS	Q039L 'Voc� j� sofreu algum tipo de discrimina��o? (Marque mais de uma resposta, se for o caso) - Nunca sofri os tipos de discrimina��o acima mencionados'.
VALUE LABELS Q039L
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS	Q040A 'Qual(is) o(s) documento(s) abaixo voc� possui? (Marque mais de uma resposta, se for o caso) - Certid�o de nascimento'.
VALUE LABELS Q040A
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS	Q040B 'Qual(is) o(s) documento(s) abaixo voc� possui? (Marque mais de uma resposta, se for o caso) - Carteira de Identidade'.
VALUE LABELS Q040B
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS	Q040C 'Qual(is) o(s) documento(s) abaixo voc� possui? (Marque mais de uma resposta, se for o caso) - CPF'.
VALUE LABELS Q040C
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS	Q040D 'Qual(is) o(s) documento(s) abaixo voc� possui? (Marque mais de uma resposta, se for o caso) - Carteira de Trabalho'.
VALUE LABELS Q040D
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS	Q040E 'Qual(is) o(s) documento(s) abaixo voc� possui? (Marque mais de uma resposta, se for o caso) - Carteira de Motorista'.
VALUE LABELS Q040E
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS	Q040F 'Qual(is) o(s) documento(s) abaixo voc� possui? (Marque mais de uma resposta, se for o caso) - Titulo de Eleitor'.
VALUE LABELS Q040F
'A'	'Sim'
'B'	'N�o'.
VARIABLE LABELS	Q040G 'Qual(is) o(s) documento(s) abaixo voc� possui? (Marque mais de uma resposta, se for o caso) - N�o tenho nenhum dos documentos acima mencionados'.
VALUE LABELS Q040G
'A'	'Sim'
'B'	'N�o'.



