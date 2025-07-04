CREATE TABLE usuario (

  id_usuario INT IDENTITY(1,1) PRIMARY KEY,

  nome_completo NVARCHAR(100) NOT NULL,

  cpf NVARCHAR(14) NOT NULL UNIQUE,

  data_nascimento DATE NULL,

  email NVARCHAR(100) NOT NULL UNIQUE,

  telefone NVARCHAR(20),

  senha_hash NVARCHAR(255) NOT NULL,

  tipo_login NVARCHAR(20) DEFAULT 'tradicional',

  dispositivo_id NVARCHAR(100),

  data_cadastro DATETIME DEFAULT GETDATE(),

  CONSTRAINT chk_tipo_login CHECK (tipo_login IN ('tradicional', 'biometria', '2FA'))

);
 
CREATE TABLE bilhetevirtual (

  id_bilhete INT IDENTITY(1,1) PRIMARY KEY,

  id_usuario INT,

  saldo DECIMAL(10,2) DEFAULT 0.00,

  status NVARCHAR(20) DEFAULT 'ativo',

  vinculo_dispositivo NVARCHAR(100),

  tipo_bilhete NVARCHAR(20) DEFAULT 'comum',

  FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),

  CONSTRAINT chk_status_bilhete CHECK (status IN ('ativo', 'bloqueado', 'expirado')),

  CONSTRAINT chk_tipo_bilhete CHECK (tipo_bilhete IN ('comum', 'estudante', 'idoso', 'outros'))

);
 
CREATE TABLE notificacao (

  id_notificacao INT IDENTITY(1,1) PRIMARY KEY,

  id_usuario INT,

  tipo NVARCHAR(30) NOT NULL,

  mensagem NVARCHAR(MAX) NOT NULL,

  data_envio DATETIME DEFAULT GETDATE(),

  lida BIT DEFAULT 0,

  FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),

  CONSTRAINT chk_tipo_notificacao CHECK (tipo IN ('saldo_baixo', 'beneficio_vencendo', 'chegada_onibus'))

);
 
CREATE TABLE pagamento (

  id_pagamento INT IDENTITY(1,1) PRIMARY KEY,

  id_usuario INT,

  valor DECIMAL(10,2) NOT NULL,

  forma_pagamento NVARCHAR(20) NOT NULL,

  data_pagamento DATETIME DEFAULT GETDATE(),

  status NVARCHAR(20) DEFAULT 'pendente',

  FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),

  CONSTRAINT chk_forma_pagamento CHECK (forma_pagamento IN ('PIX', 'credito', 'debito')),

  CONSTRAINT chk_status_pagamento CHECK (status IN ('pendente', 'confirmado', 'cancelado'))

);
 
CREATE TABLE planejamentorota (

  id_rota INT IDENTITY(1,1) PRIMARY KEY,

  id_usuario INT,

  origem NVARCHAR(100) NOT NULL,

  destino NVARCHAR(100) NOT NULL,

  data_hora_pesquisa DATETIME DEFAULT GETDATE(),

  rotas_sugeridas NVARCHAR(MAX),

  FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)

);
 
CREATE TABLE qrcode (

  id_qrcode INT IDENTITY(1,1) PRIMARY KEY,

  id_bilhete INT,

  codigo_gerado NVARCHAR(MAX) NOT NULL,

  data_geracao DATETIME DEFAULT GETDATE(),

  valido_ate DATETIME,

  status NVARCHAR(20) DEFAULT 'valido',

  FOREIGN KEY (id_bilhete) REFERENCES bilhetevirtual(id_bilhete),

  CONSTRAINT chk_status_qrcode CHECK (status IN ('valido', 'usado', 'expirado'))

);
 
CREATE TABLE recarga (

  id_recarga INT IDENTITY(1,1) PRIMARY KEY,

  id_bilhete INT,

  valor DECIMAL(10,2) NOT NULL,

  data_hora DATETIME DEFAULT GETDATE(),

  forma_pagamento NVARCHAR(20) NOT NULL,

  status_pagamento NVARCHAR(20) DEFAULT 'pendente',

  FOREIGN KEY (id_bilhete) REFERENCES bilhetevirtual(id_bilhete),

  CONSTRAINT chk_forma_recarga CHECK (forma_pagamento IN ('PIX', 'credito', 'debito')),

  CONSTRAINT chk_status_recarga CHECK (status_pagamento IN ('pendente', 'confirmado', 'cancelado'))

);
 
CREATE TABLE suporte (

  id_chamado INT IDENTITY(1,1) PRIMARY KEY,

  id_usuario INT,

  canal NVARCHAR(20) NOT NULL,

  descricao_problema NVARCHAR(MAX) NOT NULL,

  data_abertura DATETIME DEFAULT GETDATE(),

  status_chamado NVARCHAR(20) DEFAULT 'aberto',

  FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),

  CONSTRAINT chk_canal_suporte CHECK (canal IN ('chat', 'email', 'telefone')),

  CONSTRAINT chk_status_chamado CHECK (status_chamado IN ('aberto', 'em_andamento', 'resolvido', 'fechado'))

);
 
CREATE TABLE usotransporte (

  id_uso INT IDENTITY(1,1) PRIMARY KEY,

  id_bilhete INT,

  data_hora DATETIME DEFAULT GETDATE(),

  modo_entrada NVARCHAR(20) NOT NULL,

  local_embarque NVARCHAR(100),

  linha_onibus NVARCHAR(50),

  FOREIGN KEY (id_bilhete) REFERENCES bilhetevirtual(id_bilhete),

  CONSTRAINT chk_modo_entrada CHECK (modo_entrada IN ('NFC', 'QRCode'))

);

 