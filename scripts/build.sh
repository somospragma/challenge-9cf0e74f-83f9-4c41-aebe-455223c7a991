#!/bin/bash

# Script para construir la imagen del servicio de notificaciones

# Variables de entorno
SERVICE_NAME=notifications-service
DOCKER_IMAGE_TAG=latest

# Función para construir la imagen Docker
build_image() {
  echo "Construyendo la imagen Docker para $SERVICE_NAME"
  docker build -t $SERVICE_NAME:$DOCKER_IMAGE_TAG.
}

# Función para ejecutar el escaneo de dependencias
scan_dependencies() {
  echo "Escaneando dependencias con tfsec"
  tfsec.
  echo "Escaneando dependencias con Checkov"
  checkov -d.
  echo "Escaneando dependencias con OWASP Dependency Check"
  dependency-check.sh
}

# Función para ejecutar el escaneo de imágenes
scan_images() {
  echo "Escaneando imágenes con Trivy"
  trivy image $SERVICE_NAME:$DOCKER_IMAGE_TAG
}

# Función principal
main() {
  build_image
  scan_dependencies
  scan_images
}

# Ejecutar la función principal
main