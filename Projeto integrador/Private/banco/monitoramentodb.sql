-- Criar o banco de dados
CREATE DATABASE IF NOT EXISTS Monitoramento;
USE Monitoramento;

-- ==========================
-- Tabela Usuario
-- ==========================
CREATE TABLE Usuario (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(150) UNIQUE NOT NULL,
    SenhaHash VARCHAR(255) NOT NULL,
    Perfil ENUM('ADMIN', 'CLIENTE') DEFAULT 'CLIENTE'
);

-- ==========================
-- Tabela Pessoa
-- ==========================
CREATE TABLE Pessoa (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Documento VARCHAR(50) UNIQUE,
    DataNascimento DATE,
    UsuarioId INT,
    FOREIGN KEY (UsuarioId) REFERENCES Usuario(Id)
);

-- ==========================
-- Tabela Animal
-- ==========================
CREATE TABLE Animal (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Especie VARCHAR(50) NOT NULL,
    Raca VARCHAR(50),
    PessoaId INT NOT NULL,
    FOREIGN KEY (PessoaId) REFERENCES Pessoa(Id)
);

-- ==========================
-- Tabela Dispositivo
-- ==========================
CREATE TABLE Dispositivo (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Codigo VARCHAR(100) UNIQUE NOT NULL,
    Tipo ENUM('GPS','APP') DEFAULT 'GPS',
    Ativo BOOLEAN DEFAULT TRUE,
    PessoaId INT,
    AnimalId INT,
    FOREIGN KEY (PessoaId) REFERENCES Pessoa(Id),
    FOREIGN KEY (AnimalId) REFERENCES Animal(Id)
);

-- ==========================
-- Tabela Localizacao
-- ==========================
CREATE TABLE Localizacao (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Latitude DECIMAL(10, 7) NOT NULL,
    Longitude DECIMAL(10, 7) NOT NULL,
    DataHora DATETIME DEFAULT CURRENT_TIMESTAMP,
    DispositivoId INT NOT NULL,
    FOREIGN KEY (DispositivoId) REFERENCES Dispositivo(Id)
);

-- ==========================
-- Tabela Alerta
-- ==========================
CREATE TABLE Alerta (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Tipo VARCHAR(50) NOT NULL,
    Mensagem VARCHAR(255),
    DataHora DATETIME DEFAULT CURRENT_TIMESTAMP,
    DispositivoId INT NOT NULL,
    FOREIGN KEY (DispositivoId) REFERENCES Dispositivo(Id)
);
