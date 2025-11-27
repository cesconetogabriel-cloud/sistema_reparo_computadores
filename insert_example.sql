
INSERT INTO equipamentos (cliente_nome, tipo, marca, modelo, numero_serie, problema_relatado)
VALUES
('João Silva', 'Notebook', 'Dell', 'Inspiron 15', 'SN12345', 'Notebook não liga'),
('Maria Santos', 'Desktop', 'HP', 'Pavilion', 'HP55478', 'Travamentos constantes'),
('Pedro Oliveira', 'Notebook', 'Lenovo', 'Ideapad 3', 'LN77895', 'Tela não acende');


INSERT INTO agendamentos (id_equipamento, data_agendada, horario, tipo_servico, observacoes)
VALUES
(1, '2025-11-20', '14:00', 'Diagnóstico inicial', 'Cliente pediu urgência'),
(2, '2025-11-22', '09:30', 'Troca de HD', 'Levar SSD de 480GB'),
(3, '2025-11-23', '16:00', 'Revisão completa', 'Possível problema na tela');

INSERT INTO revisoes (id_equipamento, descricao, tecnico_responsavel, status_revisao)
VALUES
(1, 'Testes de energia realizados; suspeita de fonte queimada.', 'Gabriel Reus', 'Em andamento'),
(2, 'Troca de HD e reinstalação do Windows.', 'Gabriel Reus', 'Concluído'),
(3, 'Análise do circuito de vídeo; tela aparentemente funcional.', 'Gabriel Reus', 'Pendente');
