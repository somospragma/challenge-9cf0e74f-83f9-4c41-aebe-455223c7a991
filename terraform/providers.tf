# Configuración de los proveedores de Terraform para AWS y Docker
# Se utiliza la versión flexible de Terraform y de los providers para asegurar compatibilidad
# con versiones futuras dentro del rango especificado.

terraform {
  required_version = ">= 1.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

# Configuración del provider de AWS
provider "aws" {
  region = var.region

  # Configuración predeterminada para evitar la validación de tags en todos los recursos
  default_tags {
    tags = {
      Environment = var.environment
      Service     = var.service_name
    }
  }
}

# Configuración del provider de Docker
provider "docker" {
  # El host se configura dinámicamente en el módulo correspondiente
  # para asegurar que apunte al registry adecuado según el entorno
}