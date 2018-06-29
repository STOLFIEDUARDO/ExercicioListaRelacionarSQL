CREATE TABLE alunos(
	id INT IDENTITY(1,1),
	nome VARCHAR(200),
	idade INT
	PRIMARY KEY(id)
);

CREATE TABLE caracteristicas(
	id INT IDENTITY(1,1) PRIMARY KEY,
	id_aluno INT,
	nome VARCHAR(200) NOT NULL
	FOREIGN KEY (id_aluno) REFERENCES alunos(id)


);

INSERT INTO alunos (nome, idade) VALUES
('Alice', 18),
('Sophia', 4),
('Miguel', 9),
('Heitor', 23),
('Valentina', 15),
('Joaquim', 49);

INSERT INTO caracteristicas(id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Heitor'), 'Egoista');

INSERT INTO caracteristicas(id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Alice'), 'Organizada');

INSERT INTO caracteristicas(id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Sophia'), 'Pontual');

INSERT INTO caracteristicas(id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Miguel'), 'Criativo');

INSERT INTO caracteristicas(id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Heitor'), 'Proativo' );

INSERT INTO caracteristicas(id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Alice'), 'Altruista');

INSERT INTO caracteristicas(id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Valentina'), 'Pessimista');

INSERT INTO caracteristicas(id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Joaquim'), 'Flexivel'); 

INSERT INTO caracteristicas(id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Sophia'), 'Observadora');

INSERT INTO caracteristicas(id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Joaquim'),'Paciente');

INSERT INTO caracteristicas(id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Heitor'), 'Indelicado');

INSERT INTO caracteristicas(id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Sophia'), 'Desobediente');

INSERT INTO caracteristicas(id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Miguel'), 'Intolerante');

INSERT INTO caracteristicas(id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Joaquim'), 'Empatico');

INSERT INTO caracteristicas(id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Sophia'), 'Egoísta');

INSERT INTO caracteristicas(id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Heitor'), 'Egoista');

INSERT INTO caracteristicas(id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Joaquim'), 'Altruista');

INSERT INTO caracteristicas(id_aluno, nome) VALUES
((SELECT id FROM alunos WHERE nome = 'Sophia'), 'Sensivel');