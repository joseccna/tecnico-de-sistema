-- Tabela de Usuários

CREATE TABLE Usuario (

    id_usuario INT AUTO_INCREMENT PRIMARY KEY,

    nome_completo VARCHAR(100) NOT NULL,

    cpf VARCHAR(14) UNIQUE NOT NULL,

    data_nascimento DATE,

    email VARCHAR(100) UNIQUE NOT NULL,

    telefone VARCHAR(20),

    senha_hash VARCHAR(255) NOT NULL,

    tipo_login ENUM('tradicional', 'biometria', '2FA') DEFAULT 'tradicional',

    dispositivo_id VARCHAR(100),

    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);
 
-- Tabela de Bilhetes Virtuais

CREATE TABLE BilheteVirtual (

    id_bilhete INT AUTO_INCREMENT PRIMARY KEY,

    id_usuario INT,

    saldo DECIMAL(10,2) DEFAULT 0.00,

    status ENUM('ativo', 'bloqueado', 'expirado') DEFAULT 'ativo',

    vinculo_dispositivo VARCHAR(100),

    tipo_bilhete ENUM('comum', 'estudante', 'idoso', 'outros') DEFAULT 'comum',

    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)

);
 
-- Tabela de Recargas

CREATE TABLE Recarga (

    id_recarga INT AUTO_INCREMENT PRIMARY KEY,

    id_bilhete INT,

    valor DECIMAL(10,2) NOT NULL,

    data_hora DATETIME DEFAULT CURRENT_TIMESTAMP,

    forma_pagamento ENUM('PIX', 'credito', 'debito') NOT NULL,

    status_pagamento ENUM('pendente', 'confirmado', 'cancelado') DEFAULT 'pendente',

    FOREIGN KEY (id_bilhete) REFERENCES BilheteVirtual(id_bilhete)

);
 
-- Tabela de Uso do Transporte

CREATE TABLE UsoTransporte (

    id_uso INT AUTO_INCREMENT PRIMARY KEY,

    id_bilhete INT,

    data_hora DATETIME DEFAULT CURRENT_TIMESTAMP,

    modo_entrada ENUM('NFC', 'QRCode') NOT NULL,

    local_embarque VARCHAR(100),

    linha_onibus VARCHAR(50),

    FOREIGN KEY (id_bilhete) REFERENCES BilheteVirtual(id_bilhete)

);
 
-- Tabela de QR Codes

CREATE TABLE QRCode (

    id_qrcode INT AUTO_INCREMENT PRIMARY KEY,

    id_bilhete INT,

    codigo_gerado TEXT NOT NULL,

    data_geracao DATETIME DEFAULT CURRENT_TIMESTAMP,

    valido_ate DATETIME,

    status ENUM('valido', 'usado', 'expirado') DEFAULT 'valido',

    FOREIGN KEY (id_bilhete) REFERENCES BilheteVirtual(id_bilhete)

);
 
-- Tabela de Notificações

CREATE TABLE Notificacao (

    id_notificacao INT AUTO_INCREMENT PRIMARY KEY,

    id_usuario INT,

    tipo ENUM('saldo_baixo', 'beneficio_vencendo', 'chegada_onibus') NOT NULL,

    mensagem TEXT NOT NULL,

    data_envio DATETIME DEFAULT CURRENT_TIMESTAMP,

    lida BOOLEAN DEFAULT FALSE,

    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)

);
 
-- Tabela de Pagamentos (relacionada à Recarga também, se quiser separar)

CREATE TABLE Pagamento (

    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,

    id_usuario INT,

    valor DECIMAL(10,2) NOT NULL,

    forma_pagamento ENUM('PIX', 'credito', 'debito') NOT NULL,

    data_pagamento DATETIME DEFAULT CURRENT_TIMESTAMP,

    status ENUM('pendente', 'confirmado', 'cancelado') DEFAULT 'pendente',

    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)

);
 
-- Tabela de Chamados de Suporte

CREATE TABLE Suporte (

    id_chamado INT AUTO_INCREMENT PRIMARY KEY,

    id_usuario INT,

    canal ENUM('chat', 'email', 'telefone') NOT NULL,

    descricao_problema TEXT NOT NULL,

    data_abertura DATETIME DEFAULT CURRENT_TIMESTAMP,

    status_chamado ENUM('aberto', 'em_andamento', 'resolvido', 'fechado') DEFAULT 'aberto',

    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)

);
 
-- Tabela de Planejamento de Rota

CREATE TABLE PlanejamentoRota (

    id_rota INT AUTO_INCREMENT PRIMARY KEY,

    id_usuario INT,

    origem VARCHAR(100) NOT NULL,

    destino VARCHAR(100) NOT NULL,

    data_hora_pesquisa DATETIME DEFAULT CURRENT_TIMESTAMP,

    rotas_sugeridas TEXT, -- pode armazenar JSON ou texto simples

    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)

);
 