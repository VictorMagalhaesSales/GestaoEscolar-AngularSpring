CREATE TABLE aluno(
	matricula BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	sobrenome VARCHAR(50) NOT NULL,
	login VARCHAR(50) NOT NULL,
	senha VARCHAR(50) NOT NULL,
	nascimento DATE NOT NULL,
	email VARCHAR(100),
	telefone VARCHAR(50),
	imagem VARCHAR(255)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;


CREATE TABLE professor(
	id BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	sobrenome VARCHAR(50) NOT NULL,
	disciplina VARCHAR(50) NOT NULL,
	login VARCHAR(50) NOT NULL,
	senha VARCHAR(50) NOT NULL,
	nascimento DATE NOT NULL,
	email VARCHAR(100),
	telefone VARCHAR(50),
	imagem VARCHAR(255)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;


CREATE TABLE materia(
	materia VARCHAR(50) PRIMARY KEY
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;


CREATE TABLE bimestre(
	bimestre BIGINT(2) PRIMARY KEY
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;


CREATE TABLE notas(
	nota float(10,2) NOT NULL DEFAULT 9.5,
	materia VARCHAR(50),
	bimestre BIGINT(2),
	aluno BIGINT(20),
	FOREIGN KEY(materia) REFERENCES materia(materia),
	FOREIGN KEY(bimestre) REFERENCES bimestre(bimestre),
	FOREIGN KEY(aluno) REFERENCES aluno(matricula),
	PRIMARY KEY(materia,bimestre,aluno)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;


CREATE TABLE faltas(
	materia VARCHAR(50),
	bimestre BIGINT(2),
	aluno BIGINT(20),
	numero BIGINT(20),
	FOREIGN KEY(materia) REFERENCES materia(materia),
	FOREIGN KEY(bimestre) REFERENCES bimestre(bimestre),
	FOREIGN KEY(aluno) REFERENCES aluno(matricula),
	PRIMARY KEY(materia,bimestre,aluno)
)ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;


INSERT INTO aluno VALUES
(0,"Victor","Magalhães","victor","123","2001-01-29","victormagalhaessales@gmail.com","(85)988400644","c://imagems/ae.png"),
(0,"Yara","Santana","victor","123","2001-05-23","victormagalhaessales@gmail.com","(85)988400644","c://imagems/ae.png"),
(0,"Lucas","Sousa","Sousa","123","2001-10-15","victormagalhaessales@gmail.com","(85)988400644","c://imagems/ae.png");

INSERT INTO professor VALUES
(0,"Edy","vidal","Biologia","asd","asd","2001-01-01","asdasdad","asdad","asdasd"),
(0,"Kelmy","Carmurça","Português","login","senha","2001-01-01","asdasdad","asdad","asdasd"),
(0,"Jhonnys","Sousa","Física","login","senha","2001-01-01","asdasdad","asdad","asdasd");

INSERT INTO materia VALUES("Portugues");
INSERT INTO materia VALUES("Matematica");
INSERT INTO materia VALUES("Historia");
INSERT INTO materia VALUES("Geografia");
INSERT INTO materia VALUES("Fisica");
INSERT INTO materia VALUES("Quimica");
INSERT INTO materia VALUES("Filosofia");
INSERT INTO materia VALUES("Sociologia");
INSERT INTO materia VALUES("Literatura");
INSERT INTO materia VALUES("Redacao");

INSERT INTO bimestre VALUES (1),(2),(3),(4);