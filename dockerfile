FROM alpine:latest

# Instalar as dependências necessárias
RUN apk update && \
    apk add --no-cache ca-certificates && \
    update-ca-certificates && \
    apk add --no-cache bash

# Copiar o executável para dentro do contêiner
COPY pocketbase /pb/pocketbase

# Definir o diretório de trabalho
WORKDIR /pb

# Expor a porta 8090
EXPOSE 8090

# Comando para iniciar o serviço
CMD ["./pocketbase", "serve", "--http=0.0.0.0:8090"]