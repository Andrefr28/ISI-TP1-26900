INSERT INTO voluntarios (
    nome,
    telefone,
    concelho,
    codigo_postal,
    disponivel,
    capacidade_transporte_kg,
    tipo_veiculo,
    possui_refrigeracao,
    disponibilidade_horaria
) VALUES
    ('Ana Silva', '910000001', 'Braga', '4700-001', TRUE, 80, 'Carrinha', TRUE, '09:00-13:00'),
    ('Miguel Costa', '910000002', 'Braga', '4710-002', TRUE, 40, 'Ligeiro', FALSE, '14:00-18:00'),
    ('Rita Martins', '910000003', 'Guimaraes', '4800-003', TRUE, 120, 'Carrinha refrigerada', TRUE, '08:00-12:00'),
    ('Joao Pereira', '910000004', 'Vila Verde', '4730-004', FALSE, 60, 'Carrinha', FALSE, '18:00-21:00'),
    ('Carla Ferreira', '910000005', 'Barcelos', '4750-005', TRUE, 150, 'Carrinha refrigerada', TRUE, '14:00-18:00'),
    ('Pedro Almeida', '910000006', 'Famalicao', '4760-006', TRUE, 30, 'Ligeiro', FALSE, '09:00-13:00'),
    ('Sofia Ribeiro', '910000007', 'Amares', '4720-007', TRUE, 70, 'Carrinha', FALSE, '18:00-21:00'),
    ('Tiago Fernandes', '910000008', 'Esposende', '4740-008', TRUE, 100, 'Carrinha refrigerada', TRUE, '08:00-12:00')
ON CONFLICT DO NOTHING;
