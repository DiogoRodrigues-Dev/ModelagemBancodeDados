-- Hospedes

SELECT nome, email
FROM hospede
WHERE cep = '03045-000';

-- Quarto

SELECT id_quarto, numero, tipo
FROM quarto
WHERE status = 'Disponível';

-- Reserva

SELECT r.id_reserva, h.nome, r.data_checkin, r.data_checkout
FROM reserva r
JOIN hospede h ON h.id_hospede = r.id_hospede;

-- Servicos

SELECT r.id_reserva, s.descricao, sr.quantidade
FROM servicos_reserva sr
JOIN servicos s ON s.id_servico = sr.id_servico
JOIN reserva r ON r.id_reserva = sr.id_reserva;

-- Pagamentos

SELECT *
FROM pagamento
WHERE valor > 300
ORDER BY valor DESC;
