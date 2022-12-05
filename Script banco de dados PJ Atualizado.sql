create database marvel;
use marvel;

CREATE TABLE identificao (
id INT PRIMARY KEY AUTO_INCREMENT,
tipo varchar(45),
numero varchar(45)
);

CREATE TABLE usuarios(
    id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
    sobrenome VARCHAR(50),
	email VARCHAR(50),
    cel CHAR(12),
	senha VARCHAR(50),
    fk_identificacao int, constraint fkidentificacao foreign key (fk_identificacao) references identificao(id)
);

select * from identificao;

SELECT * FROM usuarios;


CREATE TABLE ranking_quiz(
	id INT PRIMARY KEY AUTO_INCREMENT,
    pontuacao INT,
    fk_usuario int, constraint fkusuario foreign key (fk_usuario)
references usuarios(id)
);

CREATE TABLE filmes(
   id INT PRIMARY KEY AUTO_INCREMENT,
   titulo VARCHAR(45),
   sinopse VARCHAR(1000),
   avaliacao DOUBLE,
   img VARCHAR(255)
);

INSERT INTO ranking_quiz (pontuacao, fk_usuario) VALUES (10, 1);

select * from identificao order by id desc limit 1;

SELECT * FROM ranking_quiz INNER JOIN usuarios on usuarios.id = ranking_quiz.fk_usuario
order by pontuacao desc;

INSERT INTO filmes (titulo, sinopse, avaliacao, img) 
	VALUES ('Vingadores: ultimato', 'Em Vingadores: Ultimato, após Thanos eliminar metade das criaturas vivas em Vingadores: Guerra Infinita, os heróis precisam lidar com a dor da perda de amigos e seus entes queridos. Com Tony Stark (Robert Downey Jr.) vagando perdido no espaço sem água nem comida, o Capitão América/Steve Rogers (Chris Evans) e a Viúva Negra/Natasha Romanov (Scarlett Johansson) precisam liderar a resistência contra o titã louco.', 4.6, 'https://br.web.img3.acsta.net/pictures/19/04/26/17/30/2428965.jpg');

INSERT INTO filmes (titulo, sinopse, avaliacao, img) 
	VALUES ('Os vingadores', 'Loki (Tom Hiddleston) retorna à Terra enviado pelos chitauri, uma raça alienígena que pretende dominar os humanos. Com a promessa de que será o soberano do planeta, ele rouba o cubo cósmico dentro de instalações da S.H.I.E.L.D. e, com isso, adquire grandes poderes. Loki os usa para controlar o dr. Erik Selvig (Stellan Skarsgard) e Clint Barton/Gavião Arqueiro (Jeremy Renner), que passam a trabalhar para ele. No intuito de contê-los, Nick Fury (Samuel L. Jackson) convoca um grupo de pessoas com grandes habilidades, mas que jamais haviam trabalhado juntas: Tony Stark/Homem de Ferro (Robert Downey Jr.), Steve Rogers/Capitão América (Chris Evans), Thor (Chris Hemsworth), Bruce Banner/Hulk (Mark Ruffalo) e Natasha Romanoff/Viúva Negra (Scarlett Johansson). Só que, apesar do grande perigo que a Terra corre, não é tão simples assim conter o ego e os interesses de cada um deles para que possam agir em grupo.', 4.0, 'https://br.web.img2.acsta.net/medias/nmedia/18/89/43/82/20052140.jpg');

INSERT INTO filmes (titulo, sinopse, avaliacao, img) 
	VALUES ('Vingadores: Era de ultran', 'Tentanto proteger o planeta de ameaças como as vistas no primeiro Os Vingadores, Tony Stark busca construir um sistema de inteligência artifical que cuidaria da paz mundial. O projeto acaba dando errado e gera o nascimento do Ultron (voz de James Spader). Capitão América (Chris Evans), Homem de Ferro (Robert Downey Jr.), Thor (Chris Hemsworth), Hulk (Mark Ruffalo), Viúva Negra (Scarlett Johansson) e Gavião Arqueiro (Jeremy Renner) terão que se unir para mais uma vez salvar o dia.', 3.7, 'https://leiturafilmica.com.br/wp-content/uploads/2015/12/avengers.jpg');

INSERT INTO filmes (titulo, sinopse, avaliacao ,img) 
	VALUES ('Vingadores: Guerra infinita', 'Em Vingadores: Guerra Infinita, Thanos (Josh Brolin) enfim chega à Terra, disposto a reunir as Joias do Infinito. Para enfrentá-lo, os Vingadores precisam unir forças com os Guardiões da Galáxia, ao mesmo tempo em que lidam com desavenças entre alguns de seus integrantes.', 3.6, 'https://upload.wikimedia.org/wikipedia/pt/thumb/9/90/Avengers_Infinity_War.jpg/250px-Avengers_Infinity_War.jpg');

INSERT INTO filmes (titulo, sinopse, avaliacao, img) 
	VALUES ('Homem de ferro', 'Tony Stark (Robert Downey Jr.) é um industrial bilionário, que também é um brilhante inventor. Ao ser sequestrado ele é obrigado por terroristas a construir uma arma devastadora mas, ao invés disto, constrói uma armadura de alta tecnologia que permite que fuja de seu cativeiro. A partir de então ele passa a usá-la para combater o crime, sob o alter-ego do Homem de Ferro.', 4.8, 'https://br.web.img2.acsta.net/c_310_420/medias/nmedia/18/91/79/19/20163665.jpg');
    
   
INSERT INTO filmes (titulo, sinopse, avaliacao, img) 
	VALUES ('Homem de ferro 2', 'Após confessar ao mundo ser o Homem de Ferro, Tony Stark (Robert Downey Jr.) passa a ser alvo do governo dos Estados Unidos, que deseja que ele entregue seu poderoso traje. Com a negativa, o governo passa a desenvolver um novo traje com o maior rival de Stark, Justin Hammer (Sam Rockwell). Jim Rhodes (Don Cheadle), o braço direito de Tony, é colocado no centro deste conflito, o que faz com que assuma a identidade de Máquina de Combate. Paralelamente, Ivan Vanko (Mickey Rourke) cria o alter-ego de Whiplash para se vingar dos atos da família Stark no passado. Para combater Whiplash e a perseguição do governo, Stark conta com o apoio de sua nova assistente, Natasha Romanoff (Scarlett Johansson), e de Nick Fury (Samuel L. Jackson), o diretor da S.H.I.E.L.D.', 4.4, 'https://ultimatodobacon.com/wp-content/uploads/2019/04/Homem-de-Ferro-2-2010-high-692x1024.jpg');

INSERT INTO filmes (titulo, sinopse, avaliacao, img) 
	VALUES ('Homem de ferro 3', 'Desde o ataque dos chitauri a Nova York, Tony Stark (Robert Downey Jr.) vem enfrentando dificuldades para dormir e, quando consegue, tem terríveis pesadelos. Ele teme não conseguir proteger sua namorada Pepper Potts (Gwyneth Paltrow) dos vários inimigos que passou a ter após vestir a armadura do Homem de Ferro. Um deles, o Mandarim (Ben Kingsley), decide atacá-lo com força total, destruindo sua mansão e colocando a vida de Pepper em risco. Para enfrentá-lo Stark precisará ressurgir do fundo do mar, para onde foi levado junto com os destroços da mansão, e superar seu maior medo: o de fracassar.', 4.1, 'https://previamente.files.wordpress.com/2013/05/iron-man-3-poster.jpg');

INSERT INTO filmes (titulo, sinopse, avaliacao, img) 
	VALUES ('Capitão América: O Primeiro Vingador', '2ª Guerra Mundial. Steve Rogers (Chris Evans) é um jovem que aceitou ser voluntário em uma série de experiências que visam criar o supersoldado americano. Os militares conseguem transformá-lo em uma arma humana, mas logo percebem que o supersoldado é valioso demais para pôr em risco na luta contra os nazistas. Desta forma, Rogers é usado como uma celebridade do exército, marcando presença em paradas realizadas pela Europa no intuito de levantar a estima dos combatentes. Para tanto passa a usar uma vestimenta com as cores da bandeira dos Estados Unidos, azul, branca e vermelha. Só que um plano nazista faz com que Rogers entre em ação e assuma a alcunha de Capitão América, usando seus dons para combatê-los em plenas trincheiras da guerra.', 4.7, 'https://vertentesdocinema.com/wp-content/uploads/2011/08/capitao-america-primeiro-vingador-poster.jpg');

INSERT INTO filmes (titulo, sinopse, avaliacao, img) 
	VALUES ('Capitão América 2: O Soldado Invernal', 'Dois anos após os acontecimentos em Nova York (Os Vingadores - The Avengers), Steve Rogers (Chris Evans) continua seu dedicado trabalho com a agência S.H.I.E.L.D. e também segue tentando se acostumar com o fato de que foi descongelado e acordou décadas depois de seu tempo. Em parceria com Natasha Romanoff (Scarlett Johansson), também conhecida como Viúva Negra, ele é obrigado a enfrentar um poderoso e misterioso inimigo chamado Soldado Invernal, que visita Washington e abala o dia a dia da S.H.I.E.L.D., ainda liderada por Nick Fury (Samuel L. Jackson).', 4.8, 'https://br.web.img3.acsta.net/pictures/14/02/03/20/36/257136.jpg');


INSERT INTO filmes (titulo, sinopse, avaliacao, img) 
	VALUES ('Thor', 'Thor (Chris Hemsworth) estava prestes a receber o comando de Asgard das mãos de seu pai Odin (Anthony Hopkins) quando forças inimigas quebraram um acordo de paz. Disposto a se vingar do ocorrido, o jovem guerreiro desobedece as ordens do rei e quase dá início a uma nova guerra entre os reinos. Enfurecido com a atitude do filho e herdeiro, Odin retira seus poderes e o expulsa para a Terra. Lá, Thor acaba conhecendo a cientista Jane Foster (Natalie Portman) e precisa recuperar seu martelo, enquanto seu irmão Loki (Tom Hiddleston) elabora um plano para assumir o poder. Mas os guerreiros do Deus do Trovão fazem a mesma viagem para buscar o amigo e impedir que isso aconteça. Só que eles não vieram sozinhos e o inimigo está presente para uma batalha que está apenas começando.', 3.5, 'https://upload.wikimedia.org/wikipedia/pt/thumb/9/9f/Thor_Poster.jpg/250px-Thor_Poster.jpg');
    
INSERT INTO filmes (titulo, sinopse, avaliacao, img) 
	VALUES ('Thor: O mundo sombrio', 'Enquanto Thor (Chris Hemsworth) liderava as últimas batalhas para conquistar a paz entre os Nove Reinos, o maldito elfo negro Malekith (Christopher Eccleston) acordava de um longo sono, sedento de vingança e louco para levar todos para a escuridão eterna. Alertado do perigo por Odin (Anthony Hopkins), o herói precisa contar com a ajuda dos companheiros Volstagg (Ray Stevenson), Sif (Jaimie Alexander), entre outros, e até de seu irmão, o traiçoeiro Loki (Tom Hiddleston), em um plano audacioso para salvar o universo do grande mal. Mas os caminhos de Thor e da amada Jane Foster (Natalie Portman) se cruzam novamente e, dessa vez, a vida dela está realmente em perigo.', 4.3, 'https://br.web.img3.acsta.net/c_310_420/pictures/210/240/21024039_20130801212713895.jpg');
    
INSERT INTO filmes (titulo, sinopse, avaliacao, img) 
	VALUES ('Thor: Ragnarok', 'Em Thor: Ragnarok, Thor (Chris Hemsworth) está preso do outro lado do universo. Ele precisa correr contra o tempo para voltar a Asgard e impedir o Ragnarok, a destruição de seu mundo, que está nas mãos da poderosa e implacável vilã Hela (Cate Blanchett).', 4.7, 'https://br.web.img3.acsta.net/pictures/17/08/26/00/05/175443.jpg');
 
INSERT INTO filmes (titulo, sinopse, avaliacao, img) 
	VALUES ('Viuva Negra', 'Em Viúva Negra, acompanhamos a vida de Natasha Romanoff (Scarlett Johansson) após os eventos de Guerra Civil. Se escondendo do governo norte-americano devido a sua aliança com o time do Capitão América, Natasha ainda precisa confrontar partes de sua história, que ela tanto evita, quando surge uma conspiração perigosa ligada ao seu passado. Perseguida por uma força que não irá parar até derrotá-la, ela terá que lidar com sua antiga vida de espiã, e também reencontrar membros de sua família que deixou para trás antes de se tornar parte dos Vingadores, e lidar com esses relacionamentos quebrados. Ao reencontrar suas raízes, e deixar de evitar lidar com suas vulnerabilidades e traumas, a heroína poderá encontrar a força que tanto precisa.', 3.9, 'https://upload.wikimedia.org/wikipedia/pt/8/88/Black_Widow_%282020%29.jpg');

INSERT INTO filmes (titulo, sinopse, avaliacao, img) 
	VALUES ('Thor: Amor e Trovão', 'Thor: Amor e Trovão é quarta aventura solo de Thor (Chris Hemsworth), personagem da Marvel, sendo a sequência direta de Thor: Ragnarok e o 29º filme do Universo Cinematográfico Marvel. Após os acontecimentos de Ultimato, Thor ansiando por um propósito, retorna a Nova Asgard e sua aposentadoria é interrompida por um assassino galáctico conhecido como Gorr (Christian Bale), o Carniceiro de Deus, que busca a extinção dos deuses. Para combater a ameaça, Thor pede a ajuda da Rainha Valquíria (Tessa Thompson), Korg (Taika Waititi) e Jane Foster (Natalie Portman), sua ex-namorada, que - para surpresa de Thor - inexplicavelmente consegue empunhar seu martelo mágico, Mjolnir, o que imbuiu Jane com o poder de Thor. Juntos, eles embarcam em uma aventura cósmica para descobrir o mistério da vingança do God Butcher e detê-lo antes que seja tarde demais.', 5, 'https://lumiere-a.akamaihd.net/v1/images/image_a9951b10.jpeg?region=0,0,540,810');

INSERT INTO filmes (titulo, sinopse, avaliacao, img) 
	VALUES ('O Incrível Hulk', 'Vivendo escondido e longe de Betty Ross (Liv Tyler), a mulher que ama, o cientista Bruce Banner (Edward Norton) busca um meio de retirar a radiação gama que está em seu sangue. Ao mesmo tempo ele precisa fugir da perseguição do general Ross (William Hurt), seu grande inimigo, e da máquina militar que tenta capturá-lo, na intenção de explorar o poder que faz com que Banner se transforme no Hulk.', 2.1,'https://alemdatorredeobservacao.files.wordpress.com/2014/02/incredible_hulk.jpg');
    
    select * from ranking_quiz;
    
    SELECT * FROM ranking_quiz INNER JOIN usuarios on usuarios.id = ranking_quiz.fk_usuario
    ORDER BY pontuacao DESC;

