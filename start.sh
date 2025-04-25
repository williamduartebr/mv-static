#!/bin/bash

# Verificar se o Docker está instalado
if ! command -v docker &> /dev/null; then
    echo "Docker não encontrado. Por favor, instale o Docker antes de continuar."
    exit 1
fi

# Verificar se o Docker Compose está instalado
if ! command -v docker-compose &> /dev/null; then
    echo "Docker Compose não encontrado. Por favor, instale o Docker Compose antes de continuar."
    exit 1
fi

# Iniciar o contêiner Docker
echo "Iniciando o contêiner Docker..."
docker-compose up -d

# Verificar se o contêiner está rodando
if [ $? -eq 0 ]; then
    echo "=================================================="
    echo "Site estático iniciado com sucesso!"
    echo "Acesse: http://localhost"
    echo "=================================================="
    echo "Para parar o contêiner, execute: docker-compose down"
else
    echo "Ocorreu um erro ao iniciar o contêiner Docker."
    exit 1
fi
