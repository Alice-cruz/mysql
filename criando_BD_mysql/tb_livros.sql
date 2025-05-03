CREATE TABLE livro (
	id_livro INT NOT NULL AUTO_INCREMENT,
    nome_livro VARCHAR(45) NOT NULL,
    nome_editora INT NOT NULL,
    nome_autor INT NOT NULL,
    PRIMARY KEY (id_livro),
    
    INDEX fk_editora (nome_editora ASC) visible,
 	INDEX fk_autor (nome_autor ASC) visible,
    CONSTRAINT fk_editora FOREIGN KEY (nome_editora) REFERENCES editora(ideditora) ON DELETE RESTRICT ON UPDATE RESTRICT,	-- restrição de dados, usando o foreign key
	CONSTRAINT fk_autor FOREIGN KEY (nome_autor) REFERENCES autor(idautor)	ON DELETE RESTRICT ON UPDATE RESTRICT
    
);
