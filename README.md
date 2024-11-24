# Sistema de Banco de Dados para Lanchonete

Este repositório contém o esquema de banco de dados relacional para o gerenciamento de uma lanchonete. O banco de dados foi projetado para gerenciar informações sobre clientes, lanchonetes, produtos, pedidos e os itens associados a cada pedido.

## Estrutura do Banco de Dados

O banco de dados consiste nas seguintes tabelas:

- **Cliente**: Armazena informações dos clientes, incluindo CPF, nome e dados do cartão de crédito.
- **Lanchonete**: Contém dados das lanchonetes, como código, nome e percentual de comissão.
- **Produto**: Armazena os produtos oferecidos pelas lanchonetes, incluindo código de produto, nome e preço.
- **Pedido**: Registra os pedidos feitos pelos clientes, incluindo número do pedido, data e hora, endereço e a lanchonete que processou o pedido.
- **Tem**: Relaciona os pedidos com os produtos solicitados, incluindo a quantidade de cada item no pedido.

## Scripts de Criação e Exemplos de Uso

Os scripts SQL para criação do banco de dados, inserção de dados e consultas de exemplo estão disponíveis no repositório. Você pode usar os seguintes comandos para testar a estrutura e realizar consultas:

- Criação do banco de dados e tabelas.
- Inserção de dados exemplo.
- Consultas para listar clientes, pedidos, produtos e mais.

## Tecnologias Utilizadas

- SQL (MySQL, MariaDB ou PostgreSQL)

## Como Usar

1. Clone o repositório para sua máquina local:
   ```bash
   git clone https://github.com/Twilight0414/Script-Sql-Lanchonete.git
