
DROP DATABASE IF EXISTS reparo_computadores;
CREATE DATABASE reparo_computadores;
\c reparo_computadores


CREATE TABLE equipamentos (
    id_equipamento SERIAL PRIMARY KEY,
    cliente_nome VARCHAR(100) NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    marca VARCHAR(50),
    modelo VARCHAR(50),
    numero_serie VARCHAR(100),
    problema_relatado TEXT,
    data_entrada DATE NOT NULL DEFAULT CURRENT_DATE,
    status_equipamento VARCHAR(30) DEFAULT 'Em análise'
);


CREATE TABLE agendamentos (
    id_agendamento SERIAL PRIMARY KEY,
    id_equipamento INT NOT NULL,
    data_agendada DATE NOT NULL,
    horario TIME NOT NULL,
    tipo_servico VARCHAR(100),
    observacoes TEXT,
    FOREIGN KEY (id_equipamento) REFERENCES equipamentos(id_equipamento) ON DELETE CASCADE
);


CREATE TABLE revisoes (
    id_revisao SERIAL PRIMARY KEY,
    id_equipamento INT NOT NULL,
    descricao TEXT NOT NULL,
    tecnico_responsavel VARCHAR(100) NOT NULL,
    data_revisao DATE NOT NULL DEFAULT CURRENT_DATE,
    status_revisao VARCHAR(30) DEFAULT 'Pendente',
    FOREIGN KEY (id_equipamento) REFERENCES equipamentos(id_equipamento) ON DELETE CASCADE
);
