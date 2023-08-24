**************************************************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                         			     */ 
/*                                   			                                                                             */
/*  Coordena��o-Geral de Medidas da Educa��o B�sica              		    		     */
/*-------------------------------------------------------------------------------------					     */
/*  PROGRAMA:                                                                                         			     */
/*               INPUT_SPSS_MICRODADOS_ENCCEJA_2022_NACIONAL_PPL_QSE	                            	     */
/*-------------------------------------------------------------------------------------					     */
/* DESCRICAO: PROGRAMA PARA LEITURA DOS MICRODADOS DO ENCCEJA 2022- REGULAR NACIONAL    */
/* COM DADOS DO  QUESTION�RIO SOCIOECON�MICO		     */
/*		 							     */
/**************************************************************************************************************************************/
/**************************************************************************************************************************************/ 
/* Obs:                                                                                				     */
/* 		                                                                               			     */
/* Para abrir os microdados, � necess�rio salvar este programa e 				     */
/* o arquivo "MICRODADOS_ENCCEJA_2022_PPL_NAC_QSE.csv" do ENCCEJA no diret�rio C:\ do computador.  */
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
  /FILE="C:\MICRODADOS_ENCCEJA_2022_PPL_NAC_QSE.csv" 
  /DELCASE=LINE 
  /DELIMITERS=";" 
  /ARRANGEMENT=DELIMITED 
  /FIRSTCASE=2 
  /IMPORTCASE=ALL 
  /VARIABLES= 
  Q001 A1 
  Q002 A1  
  Q003 A1
  Q004 A1  
  Q005A A1 
  Q005B A1 
  Q005C A1 
  Q005D A1 
  Q005E A1 
  Q005F A1 
  Q005G A1 
  Q006 A1  
  Q007 A1  
  Q008 A1  
  Q009 A1  
  Q010 A1  
  Q011A A1 
  Q011B A1 
  Q011C A1 
  Q011D A1 
  Q011E A1 
  Q011F A1 
  Q011G A1 
  Q012 A1  
  Q013 A1  
  Q014 A1  
  Q015 A1  
  Q016 A1  
  Q017 A1  
  Q018 A1  
  Q019 A1  
  Q020 A1  
  Q021 A1  
  Q022A A1 
  Q022B A1 
  Q022C A1 
  Q022D A1 
  Q022E A1 
  Q022F A1 
  Q022G A1 
  Q022H A1 
  Q023A A1 
  Q023B A1 
  Q023C A1 
  Q023D A1 
  Q023E A1 
  Q023F A1 
  Q023G A1 
  Q024 A1  
  Q025 A1  
  Q026 A1  
  Q027 A1  
  Q028A A1 
  Q028B A1 
  Q028C A1 
  Q028D A1 
  Q028E A1 
  Q029 A1  
  Q030_1 F1.0
  Q030_2 F1.0
  Q030_3 F1.0
  Q030_4 F1.0
  Q030_5 F1.0
  Q030_6 F1.0
  Q030_7 F1.0
  Q031A A1 
  Q031B A1 
  Q031C A1 
  Q031D A1 
  Q031E A1 
  Q031F A1 
  Q032A A1 
  Q032B A1 
  Q032C A1 
  Q032D A1 
  Q032E A1 
  Q032F A1 
  Q032G A1 
  Q032H A1 
  Q033 A1  
  Q034A A1 
  Q034B A1 
  Q034C A1 
  Q034D A1 
  Q034E A1 
  Q034F A1 
  Q035 A1  
  Q036 A1  
  Q037A A1 
  Q037B A1 
  Q037C A1 
  Q037D A1 
  Q037E A1 
  Q037F A1 
  Q037G A1 
  Q037H A1 
  Q037I A1 
  Q037J A1 
  Q037K A1 
  Q038A A1 
  Q038B A1 
  Q038C A1 
  Q038D A1 
  Q038E A1 
  Q039_1 F1.0
  Q039_2 F1.0
  Q039_3 F1.0
  Q039_4 F1.0
  Q039_5 F1.0
  Q039_6 F1.0
  Q039_7 F1.0. 
CACHE. 
EXECUTE. 
DATASET NAME ENCCEJA_2022_NAC_PPL_QSE WINDOW=FRONT.

VARIABLE LABELS	
Q001   "Voc� est� inserido em que tipo de Unidade?"
Q002   "Qual o seu sexo?"
Q003   "Quantos anos de idade voc� possui?"
Q004   "Como voc� se considera?"
Q005A  "Qual(is) documento(s) abaixo voc� possui? Certid�o de nascimento."
Q005B  "Qual(is) documento(s) abaixo voc� possui? Carteira de Identidade."
Q005C  "Qual(is) documento(s) abaixo voc� possui? CPF."
Q005D  "Qual(is) documento(s) abaixo voc� possui? Carteira de Trabalho."
Q005E  "Qual(is) documento(s) abaixo voc� possui? Carteira de Motorista."
Q005F  "Qual(is) documento(s) abaixo voc� possui? T�tulo de Eleitor."
Q005G  "Qual(is) documento(s) abaixo voc� possui? N�o tenho nenhum dos documentos acima mencionados."
Q006   "Qual o seu estado civil? (Marque apenas uma resposta)"
Q007   "Como era a sua moradia antes de ser privado(a) de liberdade?"
Q008   "Onde se situava o local onde voc� morava antes de ser privado(a) de liberdade?"
Q009   "O local onde voc� morava antes de ser privado(a) de liberdade fazia parte de alguma comunidade �tnicoracial?"
Q010   "Voc� morava sozinho(a) antes de ser privado(a) de liberdade?"
Q011A  "Quem morava com voc� antes de ser privado(a) de liberdade? Pai/M�e."
Q011B  "Quem morava com voc� antes de ser privado(a) de liberdade?C�njuge/companheiro(a)."
Q011C  "Quem morava com voc� antes de ser privado(a) de liberdade? Filho(s) ou filha(s)."
Q011D  "Quem morava com voc� antes de ser privado(a) de liberdade? Irm�o(s) ou irm�(s)."
Q011E  "Quem morava com voc� antes de ser privado(a) de liberdade? Outros parentes."
Q011F  "Quem morava com voc� antes de ser privado(a) de liberdade? Amigos, colegas ou conhecidos."
Q011G  "Quem morava com voc� antes de ser privado(a) de liberdade? Pessoas abrigadas/institucionalizadas."
Q012   "No local onde voc� morava antes de ser privado(a) de liberdade, com quantas pessoas voc� dividia o mesmo ambiente para dormir?"
Q013   "Voc� tem filho(s) menor(es) de 18 anos de idade?"
Q014   "Quantos filhos menores de 18 anos de idade voc� tem?"
Q015   "Com quem est� ou est�o seu(s) filho(s) menor(es) de idade?"
Q016   "Qual � o n�vel de escolaridade do seu pai?"
Q017   "Qual � o n�vel de escolaridade da sua m�e?"
Q018   "Voc� j� frequentou alguma vez a escola regular?"
Q019   "Em que tipo de escola voc� cursou a maior parte do Ensino Fundamental ou Ensino M�dio?"
Q020   "Em que ano/s�rie voc� deixou de frequentar a escola?"
Q021   "Com quantos anos de idade voc� deixou de frequentar a escola regular?"
Q022A  "Qual dos seguintes motivos pessoais influenciou voc� a deixar de frequentar a escola regular? Faltava escola perto de casa."
Q022B  "Qual dos seguintes motivos pessoais influenciou voc� a deixar de frequentar a escola regular? Vivi situa��es de maus tratos na fam�lia."
Q022C  "Qual dos seguintes motivos pessoais influenciou voc� a deixar de frequentar a escola regular? Faltava apoio familiar."
Q022D  "Qual dos seguintes motivos pessoais influenciou voc� a deixar de frequentar a escola regular? Tive filho(s) na adolesc�ncia."
Q022E  "Qual dos seguintes motivos pessoais influenciou voc� a deixar de frequentar a escola regular? Precisei ajudar nas tarefas de casa."
Q022F  "Qual dos seguintes motivos pessoais influenciou voc� a deixar de frequentar a escola regular? Precisei trabalhar."
Q022G  "Qual dos seguintes motivos pessoais influenciou voc� a deixar de frequentar a escola regular? Mudei repetidas vezes de endere�o."
Q022H  "Qual dos seguintes motivos pessoais influenciou voc� a deixar de frequentar a escola regular? Eu n�o gostava de estudar."
Q023A  "Qual desses outros motivos influenciou voc� a deixar de frequentar a escola regular? N�o havia vaga em escola p�blica."
Q023B  "Qual desses outros motivos influenciou voc� a deixar de frequentar a escola regular? Faltavam professores em minha escola."
Q023C  "Qual desses outros motivos influenciou voc� a deixar de frequentar a escola regular? Era dif�cil me relacionar com os professores."
Q023D  "Qual desses outros motivos influenciou voc� a deixar de frequentar a escola regular? Era dif�cil me relacionar com os meus colegas."
Q023E  "Qual desses outros motivos influenciou voc� a deixar de frequentar a escola regular? A escola era insegura e mal conservada."
Q023F  "Qual desses outros motivos influenciou voc� a deixar de frequentar a escola regular? As formas de ensino e de avalia��o eram desestimulantes."
Q023G  "Qual desses outros motivos influenciou voc� a deixar de frequentar a escola regular? O conte�do das aulas n�o servia para a vida."
Q024   "Antes de ter sua liberdade privada, voc� trabalhava?"
Q025   "Com que idade voc� come�ou a trabalhar?"
Q026   "Voc� realiza algum trabalho na Unidade em que est� inserido(a)?"
Q027   "Qual � a sua renda mensal aproximadamente?"
Q028A  "O valor que voc� recebe pelo trabalho remunerado na Unidade em que voc� est� inserido(a) destina-se a: compor uma caderneta de poupan�a."
Q028B  "O valor que voc� recebe pelo trabalho remunerado na Unidade em que voc� est� inserido(a) destina-se a: custear despesas pessoais."
Q028C  "O valor que voc� recebe pelo trabalho remunerado na Unidade em que voc� est� inserido(a) destina-se a: pagar indeniza��o determinada judicialmente."
Q028D  "O valor que voc� recebe pelo trabalho remunerado na Unidade em que voc� est� inserido(a) destina-se a: prestar assist�ncia � fam�lia."
Q028E  "O valor que voc� recebe pelo trabalho remunerado na Unidade em que voc� est� inserido(a) destina-se a: ressarcir o Estado."
Q029   "Quantas horas voc� trabalha na Unidade em que voc� est� inserido(a)?"
Q030_1 "Indique o grau de import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar na Unidade em que voc� est� inserido(a): Adquirir experi�ncia para reinser��o social."
Q030_2 "Indique o grau de import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar na Unidade em que voc� est� inserido(a): Aprender uma profiss�o."
Q030_3 "Indique o grau de import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar na Unidade em que voc� est� inserido(a): Ganhar meu pr�prio dinheiro."
Q030_4 "Indique o grau de import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar na Unidade em que voc� est� inserido(a): Pagar uma indeniza��o."
Q030_5 "Indique o grau de import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar na Unidade em que voc� est� inserido(a): Remir a pena."
Q030_6 "Indique o grau de import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar na Unidade em que voc� est� inserido(a): Ressarcir o Estado."
Q030_7 "Indique o grau de import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar na Unidade em que voc� est� inserido(a): Sustentar minha fam�lia."
Q031A  "Qual dos cursos abaixo voc� j� concluiu desde sua priva��o de liberdade? Curso profissionalizante."
Q031B  "Qual dos cursos abaixo voc� j� concluiu desde sua priva��o de liberdade? Curso de l�ngua estrangeira."
Q031C  "Qual dos cursos abaixo voc� j� concluiu desde sua priva��o de liberdade? Curso de computa��o ou inform�tica."
Q031D  "Qual dos cursos abaixo voc� j� concluiu desde sua priva��o de liberdade? Curso preparat�rio para testes, exames ou provas."
Q031E  "Qual dos cursos abaixo voc� j� concluiu desde sua priva��o de liberdade? Outro curso."
Q031F  "Qual dos cursos abaixo voc� j� concluiu desde sua priva��o de liberdade? N�o realizei nenhum curso."
Q032A  "Voc� realiza atividades educacionais ou culturais regularmente na Unidade em que voc� est� inserido(a)? Sim, fa�o curso profissionalizante."
Q032B  "Voc� realiza atividades educacionais ou culturais regularmente na Unidade em que voc� est� inserido(a)? Sim, fa�o curso de l�ngua estrangeira."
Q032C  "Voc� realiza atividades educacionais ou culturais regularmente na Unidade em que voc� est� inserido(a)? Sim, fa�o curso de computa��o ou inform�tica."
Q032D  "Voc� realiza atividades educacionais ou culturais regularmente na Unidade em que voc� est� inserido(a)? Sim, participo de oficinas culturais."
Q032E  "Voc� realiza atividades educacionais ou culturais regularmente na Unidade em que voc� est� inserido(a)? Sim, participo de grupos religiosos/de estudo b�blico."
Q032F  "Voc� realiza atividades educacionais ou culturais regularmente na Unidade em que voc� est� inserido(a)? Sim, realizo atividade regular de leitura."
Q032G  "Voc� realiza atividades educacionais ou culturais regularmente na Unidade em que voc� est� inserido(a)? Sim, pratico atividades de esporte/lazer."
Q032H  "Voc� realiza atividades educacionais ou culturais regularmente na Unidade em que voc� est� inserido(a)? N�o realizo nenhuma dessas atividades regularmente."
Q033   "Voc� estuda regularmente na Unidade em que voc� est� inserido(a)?"
Q034A  "Qual o principal motivo te influencia a estudar na Unidade em que voc� est� inserido(a)? Adquirir mais conhecimento, ficar atualizado."
Q034B  "Qual o principal motivo te influencia a estudar na Unidade em que voc� est� inserido(a)? Atender � expectativa de meus familiares."
Q034C  "Qual o principal motivo te influencia a estudar na Unidade em que voc� est� inserido(a)? Conseguir entrar na faculdade."
Q034D  "Qual o principal motivo te influencia a estudar na Unidade em que voc� est� inserido(a)? Conseguir um emprego."
Q034E  "Qual o principal motivo te influencia a estudar na Unidade em que voc� est� inserido(a)? Desenvolver novas habilidades."
Q034F  "Qual o principal motivo te influencia a estudar na Unidade em que voc� est� inserido(a)? Remir a pena."
Q035   "Voc� tem acesso a biblioteca ou sala de leitura na Unidade em que voc� est� inserido(a)?"
Q036   "Com que frequ�ncia voc� visita a biblioteca ou a sala de leitura na Unidade em que voc� est� inserido(a)?"
Q037A  "Que g�nero de livros voc� tem o h�bito de ler em sua Unidade? Artes/m�sica."
Q037B  "Que g�nero de livros voc� tem o h�bito de ler em sua Unidade? Autoajuda."
Q037C  "Que g�nero de livros voc� tem o h�bito de ler em sua Unidade? Biografias."
Q037D  "Que g�nero de livros voc� tem o h�bito de ler em sua Unidade? Did�ticos escolares."
Q037E  "Que g�nero de livros voc� tem o h�bito de ler em sua Unidade? Infanto-juvenil."
Q037F  "Que g�nero de livros voc� tem o h�bito de ler em sua Unidade? Literatura brasileira/estrangeira."
Q037G  "Que g�nero de livros voc� tem o h�bito de ler em sua Unidade? Poesia/poemas."
Q037H  "Que g�nero de livros voc� tem o h�bito de ler em sua Unidade? Religi�o."
Q037I  "Que g�nero de livros voc� tem o h�bito de ler em sua Unidade? Revistas/gibis."
Q037J  "Que g�nero de livros voc� tem o h�bito de ler em sua Unidade? T�cnico-cient�fico, jur�dicos."
Q037K  "Que g�nero de livros voc� tem o h�bito de ler em sua Unidade? N�o tenho h�bito de leitura."
Q038A  "Qual o principal motivo de voc� ler livros na Unidade em que voc� est� inserido(a)? Adquirir mais conhecimento, ficar atualizado."
Q038B  "Qual o principal motivo de voc� ler livros na Unidade em que voc� est� inserido(a)? Desenvolver autoconhecimento."
Q038C  "Qual o principal motivo de voc� ler livros na Unidade em que voc� est� inserido(a)? Relaxar, me distrair."
Q038D  "Qual o principal motivo de voc� ler livros na Unidade em que voc� est� inserido(a)? Melhorar minhas habilidades de comunica��o."
Q038E  "Qual o principal motivo de voc� ler livros na Unidade em que voc� est� inserido(a)? Remir a pena."
Q039_1 "Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA. Atender � expectativa dos meus familiares."
Q039_2 "Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA. Conquistar reconhecimento profissional."
Q039_3 "Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA. Conseguir entrar na faculdade."
Q039_4 "Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA. Conseguir um emprego."
Q039_5 "Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA. Obter a certifica��o do Ensino Fundamental/M�dio."
Q039_6 "Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA. Remir a pena."
Q039_7 "Indique o grau de import�ncia dos motivos que levaram voc� a participar do ENCCEJA. Testar meus conhecimentos.".

VALUE LABELS
/Q001  
"A"  "Prisional (maiores de 18 anos de idade)."
"B"  "Socioeducativa (menores de 18 anos de idade)."
/Q002  
"A"  "Masculino."
"B"  "Feminino."
/Q003  
"A"  "15 a 17"
"B"  "18 a 20"
"C"  "21 a 25"
"D"  "26 a 30"
"E"  "31 a 35"
"F"  "36 a 40"
"G"  "41 a 45"
"H"  "46 a 60"
"I"  "A partir de 61."
/Q004  
"A"  "Branco(a)."
"B"  "Pardo(a)."
"C"  "Preto(a)."
"D"  "Amarelo(a)."
"E"  "Ind�gena."
/Q005A 
"A"  "Sim"
"B"  "N�o"
/Q005B 
"A"  "Sim"
"B"  "N�o"
/Q005C 
"A"  "Sim"
"B"  "N�o"
/Q005D 
"A"  "Sim"
"B"  "N�o"
/Q005E 
"A"  "Sim"
"B"  "N�o"
/Q005F 
"A"  "Sim"
"B"  "N�o"
/Q005G 
"A"  "Sim"
"B"  "N�o"
/Q006  
"A"  "Solteiro(a)"
"B"  "Casado(a)"
"C"  "Possui rela��o est�vel com um(a) companheiro(a)/amasiado(a)"
"D"  "Separado(a) / divorciado(a) / desquitado(a)."
"E"  "Vi�vo(a)"
/Q007  
"A"  "Pr�pria."
"B"  "Alugada."
"C"  "Financiada."
"D"  "Eu morava de favor."
"E"  "Eu morava na rua."
"F"  "Eu morava em uma unidade de acolhimento tempor�rio."
/Q008  
"A"  "Zona rural"
"B"  "Zona urbana."
/Q009  
"A"  "Sim, fazia parte de comunidade ind�gena"
"B"  "Sim, fazia parte de comunidade remanescente de quilombo"
"C"  "N�o fazia parte de uma comunidade �tnico-racial."
/Q010
"A"  "Sim"
"B"  "N�o"
/Q011A 
"A"  "Sim"
"B"  "N�o"
/Q011B 
"A"  "Sim"
"B"  "N�o"
/Q011C 
"A"  "Sim"
"B"  "N�o"
/Q011D 
"A"  "Sim"
"B"  "N�o"
/Q011E 
"A"  "Sim"
"B"  "N�o"
/Q011F
"A"  "Sim"
"B"  "N�o"
/Q011G 
"A"  "Sim"
"B"  "N�o"
/Q012  
"A"  "Com uma pessoa."
"B"  "Com 2 a 3 pessoas."
"C"  "Com 4 a 5 pessoas."
"D"  "Com 6 a 7 pessoas."
"E"  "Com mais de 7 pessoas."
/Q013  
"A"  "Sim."
"B"  "N�o tenho filho(s) menor(es) de idade."
"C"  "N�o tenho filhos(as)."
/Q014  
"A"  "Um(a)."
"B"  "Dois(duas)."
"C"  "Tr�s."
"D"  "Quatro ou mais."
/Q015  
"A"  "Com a m�e biol�gica / o pai biol�gico."
"B"  "Com a m�e adotiva / o pai adotivo."
"C"  "Com a av� materna / o av� materno."
"D"  "Com a av� paterna / o av� paterno."
"E"  "Com outro parente."
"F"  "Em uma institui��o do Estado."
"G"  "N�o sei."
/Q016  
"A"  "Da 1� � 4� s�rie do Ensino Fundamental (antigo prim�rio, 1� grau)."
"B"  "Da 5� � 8� s�rie do Ensino Fundamental (antigo gin�sio, 1� grau)."
"C"  "Ensino M�dio (antigo 2� grau)."
"D"  "Ensino Superior."
"E"  "Especializa��o."
"F"  "Mestrado."
"G"  "Doutorado."
"H"  "N�o estudou."
"I"  "N�o sei."
/Q017  
"A"  "Da 1� � 4� s�rie do Ensino Fundamental (antigo prim�rio, 1� grau)."
"B"  "Da 5� � 8� s�rie do Ensino Fundamental (antigo gin�sio, 1� grau)."
"C"  "Ensino M�dio (antigo 2� grau)."
"D"  "Ensino Superior."
"E"  "Especializa��o."
"F"  "Mestrado."
"G"  "Doutorado."
"H"  "N�o estudou."
"I"  "N�o sei."
/Q018  
"A"  "Sim, j� frequentei escola regular."
"B"  "Sim, estou frequentando escolar regular na Unidade em que estou inserido(a)."
"C"  "N�o, nunca frequentei escola regular."
/Q019  
"A"  "Em escola p�blica."
"B"  "Em escola particular."
"C"  "Em escola ind�gena."
"D"  "Em escola situada em comunidade quilombola."
"E"  "Em escola da Unidade Prisional/ Socioeducativa."
/Q020 
"A"  "1� ano do Ensino Fundamental."
"B"  "2� ano do Ensino Fundamental (antiga 1� s�rie, antigo prim�rio, 1� grau)."
"C"  "3� ano do Ensino Fundamental (antiga 2� s�rie, antigo prim�rio, 1� grau)."
"D"  "4� ano do Ensino Fundamental (antiga 3� s�rie, antigo prim�rio, 1� grau)."
"E"  "5� ano do Ensino Fundamental (antiga 4� s�rie, antigo prim�rio, 1� grau)."
"F"  "6� ano do Ensino Fundamental (antiga 5� s�rie, antigo gin�sio, 1� grau)."
"G"  "7� ano do Ensino Fundamental (antiga 6� s�rie, antigo gin�sio, 1� grau)."
"H"  "8� ano do Ensino Fundamental (antiga 7� s�rie, antigo gin�sio, 1� grau)."
"I"  "9� ano do Ensino Fundamental (antiga 8� s�rie, antigo gin�sio, 1� grau)."
"J"  "1� s�rie do Ensino M�dio (antigo 2� grau)."
"K"  "2� s�rie do Ensino M�dio (antigo 2� grau)."
"L"  "3� s�rie do Ensino M�dio (antigo 2� grau)."
"M"  "N�o sei."
/Q021  
"A"  "Com menos de 10 anos de idade."
"B"  "Entre 10 e 14 anos de idade."
"C"  "Entre 15 e 17 anos de idade."
"D"  "Com mais de 17 anos de idade."
/Q022A 
"A"  "Sim"
"B"  "N�o"
/Q022B 
"A"  "Sim"
"B"  "N�o"
/Q022C 
"A"  "Sim"
"B"  "N�o"
/Q022D 
"A"  "Sim"
"B"  "N�o"
/Q022E 
"A"  "Sim"
"B"  "N�o"
/Q022F 
"A"  "Sim"
"B"  "N�o"
/Q022G 
"A"  "Sim"
"B"  "N�o"
/Q022H 
"A"  "Sim"
"B"  "N�o"
/Q023A 
"A"  "Sim"
"B"  "N�o"
/Q023B 
"A"  "Sim"
"B"  "N�o"
/Q023C 
"A"  "Sim"
"B"  "N�o"
/Q023D 
"A"  "Sim"
"B"  "N�o"
/Q023E
"A"  "Sim"
"B"  "N�o"
/Q023F 
"A"  "Sim"
"B"  "N�o"
/Q023G 
"A"  "Sim"
"B"  "N�o"
/Q024  
"A"  "Sim"
"B"  "N�o"
/Q025  
"A"  "Com menos de 10 anos de idade."
"B"  "Entre 10 e 14 anos de idade."
"C"  "Entre 15 e 18 anos de idade."
"D"  "Ap�s 18 anos de idade."
/Q026  
"A"  "Sim"
"B"  "N�o"
/Q027  
"A"  "De 3/4 at� 1 sal�rio m�nimo (De R$ 909,00 at� R$ 1.212,00)"
"B"  "De 1 a 2 sal�rios m�nimos (de R$ 1.212,01 at� R$ 2.424,00)"
"C"  "De 2 a 3 sal�rios m�nimos (de R$ 2.424,01 at� R$ 3.636,00)."
"D"  "N�o sou remunerado(a) pelo trabalho que exer�o na Unidade em que estou inserido(a)."
/Q028A 
"A"  "Sim"
"B"  "N�o"
/Q028B 
"A"  "Sim"
"B"  "N�o"
/Q028C 
"A"  "Sim"
"B"  "N�o"
/Q028D 
"A"  "Sim"
"B"  "N�o"
/Q028E 
"A"  "Sim"
"B"  "N�o"
/Q029  
"A"  "Menos de seis horas di�rias."
"B"  "Seis horas di�rias."
"C"  "Sete horas di�rias."
"D"  "Oito horas di�rias."
"E"  "Sem jornada fixa, at� 8 horas semanais."
/Q031A
"A"  "Sim"
"B"  "N�o"
/Q031B 
"A"  "Sim"
"B"  "N�o"
/Q031C 
"A"  "Sim"
"B"  "N�o"
/Q031D 
"A"  "Sim"
"B"  "N�o"
/Q031E 
"A"  "Sim"
"B"  "N�o"
/Q031F 
"A"  "Sim"
"B"  "N�o"
/Q032A 
"A"  "Sim"
"B"  "N�o"
/Q032B 
"A"  "Sim"
"B"  "N�o"
/Q032C 
"A"  "Sim"
"B"  "N�o"
/Q032D
"A"  "Sim"
"B"  "N�o"
/Q032E
"A"  "Sim"
"B"  "N�o"
/Q032F
"A"  "Sim"
"B"  "N�o"
/Q032G
"A"  "Sim"
"B"  "N�o"
/Q032H
"A"  "Sim"
"B"  "N�o"
/Q033
"A"  "Sim, frequento o Ensino M�dio regular."
"B"  "Sim, frequento aulas de alfabetiza��o em turma de EJA."
"C"  "Sim, frequento o Ensino Fundamental em turma de EJA."
"D"  "Sim, frequento o Ensino M�dio em turma de EJA."
"E"  "N�o estudo regularmente."
/Q034A
"A"  "Sim"
"B"  "N�o"
/Q034B
"A"  "Sim"
"B"  "N�o"
/Q034C
"A"  "Sim"
"B"  "N�o"
/Q034D
"A"  "Sim"
"B"  "N�o"
/Q034E
"A"  "Sim"
"B"  "N�o"
/Q034F
"A"  "Sim"
"B"  "N�o"
/Q035
"A"  "Sim"
"B"  "N�o"
/Q036
"A"  "Uma vez por semana."
"B"  "Duas a tr�s vezes por semana."
"C"  "De quatro a cinco vezes por semana."
"D"  "Diariamente."
/Q037A
"A"  "Sim"
"B"  "N�o"
/Q037B
"A"  "Sim"
"B"  "N�o"
/Q037C
"A"  "Sim"
"B"  "N�o"
/Q037D
"A"  "Sim"
"B"  "N�o"
/Q037E
"A"  "Sim"
"B"  "N�o"
/Q037F
"A"  "Sim"
"B"  "N�o"
/Q037G
"A"  "Sim"
"B"  "N�o"
/Q037H
"A"  "Sim"
"B"  "N�o"
/Q037I
"A"  "Sim"
"B"  "N�o"
/Q037J
"A"  "Sim"
"B"  "N�o"
/Q037K
"A"  "Sim"
"B"  "N�o"
/Q038A
"A"  "Sim"
"B"  "N�o"
/Q038B
"A"  "Sim"
"B"  "N�o"
/Q038C
"A"  "Sim"
"B"  "N�o"
/Q038D
"A"  "Sim"
"B"  "N�o"
/Q038E 
"A"  "Sim"
"B"  "N�o".