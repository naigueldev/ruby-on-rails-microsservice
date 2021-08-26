# Configuração do projeto

## Importando dados de arquivo excel

## Dependência
- Docker >= v20.10.5

## Projetos desenvolvidos com:
#### Microsserviço:
- Ruby v3.0.1
- Rails v6.1.3.1

## Executando o microsserviço:

Abra o terminal na raiz do projeto e entre pasta `microservice`:

`cd microservice`

Executar comando para construir os projeto back-end:

`sudo docker-compose build`

Executar o comando para inicializar:

`sudo docker-compose up -d`

Executar o comando para criar o banco de dados:

`sudo docker-compose exec api rake db:create`

Executar o comando para migrar o banco de dados:

`sudo docker-compose exec api rake db:migrate`

Executar o comando para efetuar o pré cadastro dos tipos de transações:

`sudo docker-compose exec api rake db:seed`

## Rodando os testes automatizados

Execute o comando:

`sudo docker-compose exec api bundle exec rspec`
