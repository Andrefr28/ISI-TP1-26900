CREATE TABLE IF NOT EXISTS voluntarios (
    id_voluntario SERIAL PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    telefone VARCHAR(20),
    concelho VARCHAR(80) NOT NULL,
    codigo_postal VARCHAR(8),
    disponivel BOOLEAN NOT NULL DEFAULT TRUE,
    capacidade_transporte_kg NUMERIC(8,2) NOT NULL CHECK (capacidade_transporte_kg > 0),
    tipo_veiculo VARCHAR(80) NOT NULL,
    possui_refrigeracao BOOLEAN NOT NULL DEFAULT FALSE,
    disponibilidade_horaria VARCHAR(40),
    criado_em TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS resultados_distribuicao (
    id_resultado SERIAL PRIMARY KEY,
    id_excedente VARCHAR(40) NOT NULL,
    produto VARCHAR(120) NOT NULL,
    categoria VARCHAR(80),
    quantidade NUMERIC(10,2) NOT NULL CHECK (quantidade > 0),
    unidade VARCHAR(20) NOT NULL,
    data_validade DATE,
    prioridade VARCHAR(30) NOT NULL,
    instituicao_nome VARCHAR(160),
    voluntario_id INTEGER REFERENCES voluntarios(id_voluntario),
    estado VARCHAR(60) NOT NULL,
    motivo VARCHAR(255),
    codigo_postal_origem VARCHAR(8),
    concelho_origem VARCHAR(80),
    criado_em TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS logs_etl (
    id_log SERIAL PRIMARY KEY,
    etapa VARCHAR(80) NOT NULL,
    nivel VARCHAR(20) NOT NULL,
    mensagem TEXT NOT NULL,
    registos_processados INTEGER,
    criado_em TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
