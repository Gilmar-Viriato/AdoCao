-- Criando Banco De Dados
create database adoCao;

use adoCao;
-- Criando Tabelas: 
--Tabela usuario: 
CREATE TABLE usuario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL
);
 
-- Tabela de publicações (animais perdidos, encontrados ou para adoção)
CREATE TABLE publicacao (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT NOT NULL,
    tipo ENUM('perdido', 'encontrado', 'adocao') NOT NULL,
    nome_pet VARCHAR(100),
    descricao TEXT,
    localizacao VARCHAR(255),
    status ENUM('ativo', 'resolvido', 'inativo') DEFAULT 'ativo',
    FOREIGN KEY (usuario_id) REFERENCES usuario(id) ON DELETE CASCADE
);