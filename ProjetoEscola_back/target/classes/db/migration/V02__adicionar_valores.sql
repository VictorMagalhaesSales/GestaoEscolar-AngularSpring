
INSERT INTO aluno VALUES
(0,"Victor","Magalhães","2001-01-29","admin@algamoney.com","$2a$10$X607ZPhQ4EgGNaYKt3n4SONjIv9zc.VMWdEuhCuba7oLAL5IvcL5.","85 988400644","c://imagems/ae.png");

INSERT INTO professor VALUES
(0, "Administrador", "MASTER", "MASTER", "2018-12-09", "adm@adm.com", "$2a$10$X607ZPhQ4EgGNaYKt3n4SONjIv9zc.VMWdEuhCuba7oLAL5IvcL5.", "MASTER", "MASTER" ),
(0, "Kelmy", "Carmurça", "Português", "2001-01-01", "kelmy@gmail.com", "$2a$10$X607ZPhQ4EgGNaYKt3n4SONjIv9zc.VMWdEuhCuba7oLAL5IvcL5.", "988400644", "c://imagems/ae.png");

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


INSERT INTO permissao (codigo, descricao) values (1, 'ROLE_LISTAR_ALUNOS');
INSERT INTO permissao (codigo, descricao) values (2, 'ROLE_LISTAR_ALUNO');
INSERT INTO permissao (codigo, descricao) values (3, 'ROLE_SALVAR_ALUNO');
INSERT INTO permissao (codigo, descricao) values (4, 'ROLE_DELETAR_ALUNO');
INSERT INTO permissao (codigo, descricao) values (5, 'ROLE_EDITAR_ALUNO');

INSERT INTO permissao (codigo, descricao) values (6, 'ROLE_LISTAR_FALTAS');
INSERT INTO permissao (codigo, descricao) values (7, 'ROLE_SALVAR_FALTA');
INSERT INTO permissao (codigo, descricao) values (8, 'ROLE_DELETAR_FALTA');

INSERT INTO permissao (codigo, descricao) values (9, 'ROLE_LISTAR_NOTAS');
INSERT INTO permissao (codigo, descricao) values (10, 'ROLE_SALVAR_NOTA');
INSERT INTO permissao (codigo, descricao) values (11, 'ROLE_DELETAR_NOTA');
INSERT INTO permissao (codigo, descricao) values (12, 'ROLE_EDITAR_NOTA');

INSERT INTO permissao (codigo, descricao) values (13, 'ROLE_LISTAR_PROFESSORES');
INSERT INTO permissao (codigo, descricao) values (14, 'ROLE_LISTAR_PROFESSOR');
INSERT INTO permissao (codigo, descricao) values (15, 'ROLE_SALVAR_PROFESSOR');
INSERT INTO permissao (codigo, descricao) values (16, 'ROLE_DELETAR_PROFESSOR');
INSERT INTO permissao (codigo, descricao) values (17, 'ROLE_EDITAR_PROFESSOR');

-- aluno
INSERT INTO aluno_permissao(codigo_aluno,codigo_permissao) VALUES 
(1,2),(1,5),(1,6),(1,9),(1,13);

-- professor
INSERT INTO professor_permissao(codigo_professor,codigo_permissao) VALUES
(1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),
(2,1),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(2,12),(2,13),(2,14),(2,15),(2,17);


