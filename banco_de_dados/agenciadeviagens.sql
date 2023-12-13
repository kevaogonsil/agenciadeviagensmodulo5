
use agenciadeviagens;
-- Create tables

CREATE TABLE cliente (
    clienteID INT PRIMARY KEY,
    primeironome VARCHAR(50),
    sobrenome VARCHAR(50),
    email VARCHAR(100),
    telefone VARCHAR(20),
    endereco TEXT
);

CREATE TABLE reserva (
    reservaID INT PRIMARY KEY,
    clienteID INT,
    datadareserva DATE,
     precototal DECIMAL(10, 2),
    FOREIGN KEY (clienteID) REFERENCES cliente(clienteID)
);

CREATE TABLE viagem (
    viagemID INT PRIMARY KEY,
    destino VARCHAR(100),
    datadapartida DATE,
    datadoretorno DATE,
    descricao TEXT,
    preco DECIMAL(10, 2),
    assentosdisponiveis INT,
    FOREIGN KEY (categoriaID) REFERENCES categoriadaviagem(categoriaID)
);

CREATE TABLE pagamento (
    pagamentoID INT PRIMARY KEY,
    reservaID INT,
    datadopagamento DATE,
    quantia DECIMAL(10, 2),
    formadepagamento VARCHAR(50),
    FOREIGN KEY (reservaID) REFERENCES reserva(reservaID)
);

CREATE TABLE analise (
    analiseID INT PRIMARY KEY,
    clienteID INT,
    viagemID INT,
    analise INT,
    comentarios TEXT,
    FOREIGN KEY (clienteID) REFERENCES cliente(clienteID),
    FOREIGN KEY (viagemID) REFERENCES viagem(viagemID)
);

CREATE TABLE funcionario (
funcionarioID INT PRIMARY KEY,
 primeironome VARCHAR(50),
  sobrenome VARCHAR(50),
    email VARCHAR(100),
    telefone VARCHAR(20),
    Role VARCHAR(50)
);

CREATE TABLE localizacaodaagencia (
    localizacaoID INT PRIMARY KEY,
    nomedolocal VARCHAR(100),
    endereco TEXT,
   telefone VARCHAR(20)
);

CREATE TABLE categoriadaviagem (
   categoriaID INT PRIMARY KEY,
nomedacategoria VARCHAR(50)
);

