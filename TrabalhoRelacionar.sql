CREATE TABLE categorias(
	id INT IDENTITY(1,1),
	nome VARCHAR(100)
	PRIMARY KEY(id)
	
);

CREATE TABLE fraquezas(
	id INT IDENTITY(1,1),
	nome VARCHAR(100)
	PRIMARY KEY(id)

);

CREATE TABLE pokemons(
	id INT IDENTITY(1,1) PRIMARY KEY,
	nome VARCHAR(100),
	id_categoria INT,
	id_fraqueza_1 INT,
	id_fraqueza_2 INT,
	FOREIGN KEY (id_categoria) REFERENCES categorias(id),
	FOREIGN KEY (id_fraqueza_1) REFERENCES fraquezas(id),
	FOREIGN KEY (id_fraqueza_2) REFERENCES fraquezas(id)

);







