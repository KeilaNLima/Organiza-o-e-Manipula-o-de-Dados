/* projeto de Organização manipulação de dados: */

CREATE TABLE Cadastro tarefa (
    Pioridade  integer PRIMARY KEY,
    Nome_tarefa varchar(200),
    Data_limte date,
    Percentual_concluido real,
    Detalhamento_tarefa vachar(200,
    fk_Pessoa_CPF integer
);

CREATE TABLE Pessoa (
    CPF integer PRIMARY KEY,
    Nome vachar(200)
);

CREATE TABLE Manter itens tarefa (
    Percentual_correspondente varchar(200),
    Descrição_execução varchar(100),
    Data execução date,
    fk_Cadastro tarefa_Pioridade  integer
);

CREATE TABLE Coclusão tarefa (
    Data_limite date,
    Percentual_concluido real,
    Detalhamento vachar(200),
    fk_Cadastro tarefa_Pioridade  integer
);
 
ALTER TABLE Cadastro tarefa ADD CONSTRAINT FK_Cadastro tarefa_2
    FOREIGN KEY (fk_Pessoa_CPF)
    REFERENCES Pessoa (CPF)
    ON DELETE RESTRICT;
 
ALTER TABLE Manter itens tarefa ADD CONSTRAINT FK_Manter itens tarefa_1
    FOREIGN KEY (fk_Cadastro tarefa_Pioridade )
    REFERENCES Cadastro tarefa (Pioridade )
    ON DELETE RESTRICT;
 
ALTER TABLE Coclusão tarefa ADD CONSTRAINT FK_Coclusão tarefa_1
    FOREIGN KEY (fk_Cadastro tarefa_Pioridade )
    REFERENCES Cadastro tarefa (Pioridade )
    ON DELETE RESTRICT;