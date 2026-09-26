CREATE DATABASE IF NOT EXISTS crud_farmacia;
USE crud_farmacia;

CREATE TABLE funcionario(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(500) NOT NULL,
    email VARCHAR(500) NOT NULL
);

CREATE TABLE pedido_reposicao(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_funcionario INT,
    nome_medicamento VARCHAR(500) NOT NULL,
    quantidade INT NOT NULL,
    urgencia ENUM('baixa','média','alta'),
    data_solicitacao DATETIME,
    status_pedido ENUM('solicitado','em separação','recebido'),
    FOREIGN KEY (id_funcionario) REFERENCES funcionario(id)
);