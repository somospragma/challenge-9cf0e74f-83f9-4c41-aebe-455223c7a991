# Variables globales para la infraestructura del servicio de notificaciones
# Estas variables se utilizan en los módulos y configuraciones principales de Terraform
# y deben ser definidas en los archivos terraform.tfvars por entorno.

variable "region" {
  description = "Región de AWS donde se desplegará la infraestructura"
  type        = string
}

variable "environment" {
  description = "Entorno de despliegue (dev, prod, etc.)"
  type        = string
}

variable "service_name" {
  description = "Nombre del servicio (notifications-service)"
  type        = string
  default     = "notifications-service"
}

variable "container_port" {
  description = "Puerto expuesto por el contenedor Docker"
  type        = number
  default     = 8080
}

variable "ecs_cluster_name" {
  description = "Nombre del cluster ECS donde se desplegará el servicio"
  type        = string
}

variable "ecs_task_cpu" {
  description = "CPU asignada a la tarea ECS (en unidades de CPU)"
  type        = number
  default     = 256
}

variable "ecs_task_memory" {
  description = "Memoria asignada a la tarea ECS (en MB)"
  type        = number
  default     = 512
}

variable "ecs_desired_count" {
  description = "Número deseado de instancias de la tarea ECS"
  type        = number
  default     = 1
}

variable "alb_arn" {
  description = "ARN del Application Load Balancer asociado al servicio"
  type        = string
}

variable "vpc_id" {
  description = "ID de la VPC donde se desplegará la infraestructura"
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
  default     = 7
}

variable "image_tag" {
  description = "Tag de la imagen Docker del servicio"
  type        = string
}

variable "secrets_arn" {
  description = "ARN del secreto en AWS Secrets Manager que contiene las credenciales del servicio"
  type        = string
}

variable "sns_topic_arn" {
  description = "ARN del topic SNS para notificaciones de alertas"
  type        = string
}

variable "dynamodb_table_name" {
  description = "Nombre de la tabla DynamoDB para almacenamiento de notificaciones"
  type        = string
}

variable "dynamodb_read_capacity" {
  description = "Capacidad de lectura provisionada para la tabla DynamoDB"
  type        = number
  default     = 5
}

variable "dynamodb_write_capacity" {
  description = "Capacidad de escritura provisionada para la tabla DynamoDB"
  type        = number
  default     = 5
}