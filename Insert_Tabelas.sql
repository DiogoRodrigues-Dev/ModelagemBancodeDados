INSERT INTO hospede (nome, cpf, telefone, cep, email) VALUES
('Carlos Almeida', '12345678901', '11987654321', '03045000', 'carlos@gmail.com'),
('Mariana Santos', '98765432100', '11988776655', '03312010', 'mariana@gmail.com'),
('João Pereira', '45678912377', '11999887766', '03456030', 'joao@gmail.com');

INSERT INTO quarto (numero, tipo, status, valor_diaria) VALUES
(101, 'Solteiro', 'Disponível', 150.00),
(102, 'Casal', 'Ocupado', 250.00),
(201, 'Luxo', 'Disponível', 450.00);

INSERT INTO funcionario (nome, cargo, turno) VALUES
('Ana Costa', 'Recepcionista', 'Manhã'),
('Bruno Rocha', 'Gerente', 'Integral'),
('Fernanda Lima', 'Atendente', 'Noite');

INSERT INTO reserva (id_hospede, id_quarto, data_checkin, data_checkout) VALUES
(1, 1, '2025-01-10', '2025-01-12'),
(2, 2, '2025-02-05', '2025-02-08'),
(3, 3, '2025-03-01', '2025-03-05');

INSERT INTO pagamento (id_reserva, data, forma_pagamento, valor) VALUES
(1, '2025-01-12', 'Cartão de Crédito', 300.00),
(2, '2025-02-08', 'PIX', 750.00),
(3, '2025-03-05', 'Dinheiro', 1800.00);

INSERT INTO servicos (descricao, valor_unitario) VALUES
('Café da Manhã', 30.00),
('Lavanderia', 20.00),
('Spa Relaxante', 150.00),
('Translado Aeroporto', 80.00);

INSERT INTO servicos_reserva (id_reserva, id_servico, quantidade, valor_total) VALUES
(1, 1, 2, 60.00),   -- reserva 1 consumiu 2 cafés
(1, 2, 1, 20.00),   -- reserva 1 usou lavanderia
(2, 3, 1, 150.00),  -- reserva 2 usou spa
(3, 1, 4, 120.00),  -- reserva 3 consumiu 4 cafés
(3, 4, 1, 80.00);   -- reserva 3 usou translado
