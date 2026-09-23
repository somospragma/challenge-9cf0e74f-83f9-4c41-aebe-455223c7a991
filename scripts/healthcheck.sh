#!/bin/bash

# Script para verificar la salud del servicio desplegado

# Variables de entorno
SERVICE_NAME=notifications-service

# Función para verificar la salud del servicio
check_health() {
  echo "Verificando la salud de $SERVICE_NAME"
  response=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:8080/health)
  if [ $response -eq 200 ]; then
    echo "$SERVICE_NAME está saludable"
  else
    echo "$SERVICE_NAME no está saludable"
    exit 1
  fi
}

# Función principal
main() {
  check_health
}

# Ejecutar la función principal
main