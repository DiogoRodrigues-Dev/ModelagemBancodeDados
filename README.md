# 🏨 Sistema de Hotelaria – Modelagem de Banco de Dados  
Trabalho desenvolvido para a disciplina **Modelagem de Banco de Dados**, com o objetivo de projetar, normalizar e implementar um banco de dados relacional completo utilizando **PostgreSQL**.

O projeto representa um sistema de hotelaria, permitindo o gerenciamento de hóspedes, reservas, pagamentos, funcionários, quartos e serviços adicionais.

---

## 📌 Objetivos do Projeto

- Criar um minimundo representando o funcionamento básico de um hotel.  
- Desenvolver o **Modelo Lógico** baseado no DER.  
- Garantir a normalização (1FN, 2FN e 3FN) de todas as entidades.  
- Implementar o banco de dados no **PostgreSQL**, utilizando o pgAdmin 4.  
- Criar scripts SQL completos contendo:
  - Criação das tabelas (DDL)
  - Inserção de dados (INSERT)
  - Consultas (SELECT)
  - Atualizações (UPDATE)
  - Exclusões (DELETE)

---

## 🗂️ Entidades do Sistema

As entidades foram modeladas de acordo com as regras de normalização e com suas respectivas chaves primárias e estrangeiras.

### 🔹 **Hóspede**
Armazena dados pessoais dos hóspedes do hotel.

### 🔹 **Quarto**
Informações dos quartos, incluindo número, tipo, status e valor da diária.

### 🔹 **Funcionário**
Registra os funcionários e seus cargos/turnos.

### 🔹 **Reserva**
Relaciona hóspedes a quartos com suas datas de check-in e check-out.

### 🔹 **Pagamento**
Representa os pagamentos realizados por reserva.

### 🔹 **Serviços**
Serviços adicionais oferecidos pelo hotel.

### 🔹 **Serviços_Reserva**
Tabela associativa (N:N) entre reservas e serviços.  
Possui **chave primária composta (id_reserva, id_servico)**.

---

## 🛠️ Tecnologias Utilizadas

- **PostgreSQL 18**
- **pgAdmin 4**
- Linguagem SQL (DDL + DML)
- Git / GitHub

---

## 📄 Estrutura dos Scripts SQL

O repositório contém os seguintes arquivos SQL:

### ✔ **Criacao_Tabelas.sql**
Script responsável pela criação de todas as tabelas do banco de dados, incluindo:
- Chaves primárias (PK)
- Chaves estrangeiras (FK)
- Tipos de dados
- Relacionamentos
- Restrições de integridade

### ✔ **Insert_Tabelas.sql**
Contém todos os comandos INSERT usados para popular as tabelas com dados iniciais para testes.

### ✔ **Selects.sql**
Arquivo contendo pelo menos cinco consultas SELECT utilizando:
- JOIN
- WHERE
- ORDER BY
- LIMIT  
e outras operações solicitadas no projeto.

### ✔ **update.sql**
Arquivo contendo três comandos UPDATE, aplicando alterações reais nas tabelas.

### ✔ **delete.sql**
Arquivo contendo três comandos DELETE, sempre respeitando integridade referencial para evitar erros.

---

## ▶️ Como Executar o Projeto

1. Instale o **PostgreSQL** e abra o **pgAdmin 4**.  
2. Crie um banco de dados chamado **hotel_minimundo**.  
3. Abra o Query Tool clicando com o botão direito no banco.  
4. Execute na ordem:
   - `criacao_tabelas.sql`
   - `02_insert_tabelas.sql`
   - `03_selects.sql`
   - `04_update.sql`
   - `05_delete.sql`
5. (Opcional) Modifique os dados e teste novas consultas.

---

## 🗃️ Modelo Lógico (DER)

O DER foi revisado e ajustado para atender às formas normais 1FN, 2FN e 3FN.  
Inclui relacionamentos, cardinalidades e chaves.

> <img width="742" height="542" alt="DG2" src="https://github.com/user-attachments/assets/ffa99694-618c-439d-9b64-926bae3d332d" />

---

## 🎯 Resultados

- Banco totalmente normalizado e funcional  
- Operações CRUD implementadas com sucesso  
- Tabelas interligadas respeitando integridade referencial  
- Scripts versionados e documentados no GitHub  

---

## 👨‍💻 Autor

**Diogo Rodrigues**  
Estudante de Ciência da Computação
Trabalho para a disciplina: *Modelagem de Banco de Dados*
