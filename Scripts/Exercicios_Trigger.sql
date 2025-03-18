CREATE DATABASE EXERCICIOS_TRIGGER;

USE EXERCICIOS_TRIGGER;

-- Criação das tabelas
CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    saldo DECIMAL(10, 2) NOT NULL
);

CREATE TABLE pedidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    valor DECIMAL(10, 2) NOT NULL,
    data_pedido DATE NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE historico_pedidos (
    id_historico INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    descricao VARCHAR(255),
    data_historico TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Lista de Exercícios com Triggers
-- 1. Crie um trigger que, ao inserir um novo pedido, subtraia o valor do pedido do saldo do cliente correspondente.

-- 2. Crie um trigger que impeça a inserção de pedidos cujo valor seja maior que o saldo disponível do cliente.

-- 3. Crie um trigger que registre na tabela `historico_pedidos` uma descrição informando que um novo pedido foi realizado, incluindo o ID do pedido e a data do pedido.

-- 4. Crie um trigger que, ao excluir um pedido, registre essa ação na tabela `historico_pedidos`, incluindo o ID do pedido e a mensagem "Pedido excluído".

-- 5. Crie um trigger que impeça a atualização do valor de um pedido caso a nova quantia seja maior que 20% do valor original.
