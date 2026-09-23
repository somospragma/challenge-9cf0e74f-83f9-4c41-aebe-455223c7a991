provider "aws" {
  version = "~> 5.0"
}

module "notifications_service" {
  source = "./modules/notifications_service"
}