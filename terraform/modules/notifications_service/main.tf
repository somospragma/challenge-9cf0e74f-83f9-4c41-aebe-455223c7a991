module "ecs_service" {
  source = "terraform-aws-modules/ecs/aws"
  cluster_name = var.cluster_name
  task_definition = var.task_definition
  desired_count = var.desired_count
}

module "lambda_function" {
  source = "terraform-aws-modules/lambda/aws"
  function_name = var.function_name
  runtime = var.runtime
  handler = var.handler
  source_path = var.source_path
}

module "sqs_queue" {
  source = "terraform-aws-modules/sqs/aws"
  queue_name = var.queue_name
  message_retention_seconds = var.message_retention_seconds
}