CREATE DATABASE IF NOT EXISTS crud_farmacia;
USE crud_farmacia;

CREATE TABLE funcionario(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(500) NOT NULL,
    email VARCHAR(500) NOT NULL
);

CREATE TABLE pedido_reposicao(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_funcionario INT NOT NULL,
    nome_medicamento VARCHAR(500) NOT NULL,
    quantidade INT NOT NULL,
    urgencia ENUM('baixa','média','alta') NOT NULL,
    data_solicitacao DATE NOT NULL,
    status_pedido ENUM('solicitado','em separação','recebido') DEFAULT 'solicitado' NOT NULL,
    FOREIGN KEY (id_funcionario) REFERENCES funcionario(id)
);

INSERT INTO funcionario (nome, email) VALUES
('Serenna', 'serenna@gmail.com'),
('Henrique', 'henrique@gmail.com'),
('Thais', 'thais@gmail.com');

INSERT INTO pedido_reposicao (id_funcionario, nome_medicamento, quantidade, urgencia, data_solicitacao, status_pedido) VALUES
(1, 'Paracetamol', 50, 'alta', CURRENT_DATE, 'solicitado'),
(2, 'Ibuprofeno', 30, 'média', CURRENT_DATE, 'em separação'),
(3, 'Amoxicilina', 20, 'baixa', CURRENT_DATE, 'recebido');