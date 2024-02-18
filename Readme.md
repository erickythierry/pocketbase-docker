# Executando Pocketbase em um Contêiner Docker

Este é um exemplo simples de como executar o Pocketbase dentro de um contêiner Docker usando Alpine Linux.

## Requisitos

- Docker instalado na máquina local.

## Como usar

1. Clone este repositório:

```bash
git clone (link deste repositorio)

cd seu-repositorio

docker build -t pocketbase-docker .

docker run -d -p 8090:8090 pocketbase-docker
```

### Isso iniciará o Pocketbase dentro do contêiner Docker e o serviço estará disponível em http://localhost:8090.