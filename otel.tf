module "ecs-ec2" {
  source                   = "github.com/coralogix/terraform-coralogix-aws/modules/ecs-ec2"
  ecs_cluster_name         = module.ecs_cluster.cluster_name
  image_version            = "latest"
  memory                   = 256
  coralogix_region         = "Europe"
  default_application_name = var.coralogix_app_name
  default_subsystem_name   = var.coralogix_subsystem_name
  api_key                  = var.coralogix_private_key
  metrics                  = true
}