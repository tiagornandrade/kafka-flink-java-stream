# Flink Ecommerce Realtime Streaming

Este é um exemplo de aplicação Flink para processamento de streaming em tempo real para análise de transações financeiras em um ambiente de comércio eletrônico. A aplicação utiliza o Apache Flink para processar dados de transações provenientes de um tópico Kafka e realiza operações de ETL (Extração, Transformação e Carga) em um banco de dados PostgreSQL.

## Pré-requisitos

Antes de executar a aplicação, certifique-se de ter as seguintes dependências instaladas:

- Java 17 (ou versão superior)
- Apache Flink 1.14.6
- PostgreSQL
- Kafka
- Maven

## Configuração

A configuração da aplicação é feita no arquivo `DataStreamJob.java`. Algumas configurações importantes incluem:

- **jdbcUrl**: URL de conexão JDBC para o banco de dados PostgreSQL.
- **username**: Nome de usuário do banco de dados.
- **password**: Senha do banco de dados.
- **bootstrapServers**: Lista de servidores Kafka para conexão.
- **topic**: Tópico Kafka do qual a aplicação irá consumir as transações.

Além disso, certifique-se de ajustar outras configurações conforme necessário para o seu ambiente.

## Execução

Para executar a aplicação, siga estas etapas:

1. Certifique-se de ter um cluster Flink em execução.
2. Inicie o Kafka e crie o tópico `financial_transactions`.
3. Certifique-se de ter um banco de dados PostgreSQL em execução e ajuste as configurações de conexão.
4. Execute a aplicação usando Maven:

    ```bash
    mvn clean install
    java -jar target/nome-do-seu-arquivo-jar.jar
    ```

## Funcionalidades

A aplicação realiza as seguintes operações:

1. **Criação de Tabelas:**
    - Cria tabelas no banco de dados PostgreSQL se elas não existirem.

2. **Ingestão de Transações:**
    - Ingesta transações do tópico Kafka.
    - Armazena transações em uma tabela no PostgreSQL.

3. **Análise de Vendas por Categoria:**
    - Calcula e armazena o total de vendas por categoria.

4. **Análise de Vendas por Dia:**
    - Calcula e armazena o total de vendas por dia.

5. **Análise de Vendas por Mês:**
    - Calcula e armazena o total de vendas por mês.

## Contribuições

Sinta-se à vontade para contribuir, reportar problemas ou fazer sugestões para melhorar esta aplicação. Se encontrar problemas ou bugs, abra uma issue para que possamos discutir e corrigir.

**Divirta-se com o processamento de streaming em tempo real usando Apache Flink!**