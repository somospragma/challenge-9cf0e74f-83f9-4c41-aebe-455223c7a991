# Variables específicas del módulo del servicio de notificaciones
# Estas variables son utilizadas internamente por el módulo y algunas pueden
# tener valores por defecto que pueden ser sobrescritos desde el módulo principal.

variable "service_name" {
  description = "Nombre del servicio (notifications-service)"
  type        = string
}

variable "environment" {
  description = "Entorno de despliegue (dev, prod, etc.)"
  type        = string
}

variable "region" {
  description = "Región de AWS donde se desplegará el servicio"
  type        = string
}

variable "container_port" {
  description = "Puerto expuesto por el contenedor Docker"
  type        = number
}

variable "ecs_cluster_name" {
  description = "Nombre del cluster ECS donde se desplegará el servicio"
  type        = string
}

variable "ecs_task_cpu" {
  description = "CPU asignada a la tarea ECS (en unidades de CPU)"
  type        = number
}

variable "ecs_task_memory" {
  description = "Memoria asignada a la tarea ECS (en MB)"
  type        = number
}

variable "ecs_desired_count" {
  description = "Número deseado de instancias de la tarea ECS"
  type        = number
}

variable "alb_arn" {
  description = "ARN del Application Load Balancer asociado al servicio"
  type        = string
}

variable "vpc_id" {
  description = "ID de la VPC donde se desplegará el servicio"
  type        = string
}

variable "subnets" {
  description = "Lista de IDs de subnets donde se desplegará el servicio"
  type        = list(string)
}

variable "security_groups" {
  description = "Lista de IDs de security groups asociados al servicio"
  type        = list(string)
}

variable "log_retention_in_days" {
  description = "Días de retención de logs en CloudWatch"
  type        = number
}

variable "image_repository" {
  description = "URL del repositorio de imágenes Docker"
  type        = string
}

variable "image_tag" {
  description = "Tag de la imagen Docker del servicio"
  type        = string
}

variable "secrets_arn" {
  description = "ARN del secreto en AWS Secrets Manager"
  type        = string
}

variable "dynamodb_table_name" {
  description = "Nombre de la tabla DynamoDB para almacenamiento de notificaciones"
  type        = string
}

variable "dynamodb_read_capacity" {
  description = "Capacidad de lectura provisionada para la tabla DynamoDB"
  type        = number
}

variable "dynamodb_write_capacity" {
  description = "Capacidad de escritura provisionada para la tabla DynamoDB"
  type        = number
}

variable "sns_topic_arn" {
  description = "ARN del topic SNS para notificaciones de alertas"
  type        = string
}

variable "health_check_path" {
  description = "Ruta para el health check del servicio"
  type        = string
  default     = "/health"
}

variable "alb_listener_port" {
  description = "Puerto del listener del ALB"
  type        = number
  default     = 80
}

variable "alb_listener_protocol" {
  description = "Protocolo del listener del ALB"
  type        = string
  default     = "HTTP"
}