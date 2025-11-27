CREATE TABLE hospede (
    id_hospede SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    cep VARCHAR(10),
    email VARCHAR(100)
);

CREATE TABLE quarto (
    id_quarto SERIAL PRIMARY KEY,
    numero INT NOT NULL,
    tipo VARCHAR(50),
    status VARCHAR(20),
    valor_diaria NUMERIC(10,2)
);

CREATE TABLE funcionario (
    id_funcionario SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(50),
    turno VARCHAR(20)
);

CREATE TABLE reserva (
    id_reserva SERIAL PRIMARY KEY,
    id_hospede INT REFERENCES hospede(id_hospede),
    id_quarto INT REFERENCES quarto(id_quarto),
    data_checkin DATE,
    data_checkout DATE,
    id_funcionario INT REFERENCES funcionario(id_funcionario)
);

CREATE TABLE pagamento (
    id_pagamento SERIAL PRIMARY KEY,
    id_reserva INT REFERENCES reserva(id_reserva),
    data DATE,
    forma_pagamento VARCHAR(50),
    valor NUMERIC(10,2)
);

CREATE TABLE servicos (
    id_servico SERIAL PRIMARY KEY,
    descricao VARCHAR(200),
    valor_unitario NUMERIC(10,2)
);

CREATE TABLE servicos_reserva (
    id_reserva INT REFERENCES reserva(id_reserva),
    id_servico INT REFERENCES servicos(id_servico),
    quantidade INT,
    valor_total NUMERIC(10,2),

    PRIMARY KEY(id_reserva, id_servico)
);
