variable "aws_region" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = "us-east-1"
}

variable "subnet_ids" {
  description = "List of subnet IDs for the ECS Autoscaling Group"
  type        = list(string)
  default     = []
}

variable "coralogix_private_key" {
  description = "Coralogix Private Key for authentication"
  type        = string
  default = ""
}

variable "coralogix_app_name" {
  description = "The name of the application for Coralogix logs"
  type        = string
  default = "ecs-ec2-app-test"
}

variable "coralogix_subsystem_name" {
  description = "The subsystem name for Coralogix logs"
  type        = string
  default = "ecs-ec2-test"
}

variable "otel_config_file" {
  type        = string
  description = "File path to a custom opentelemetry configuration file. Defaults to an embedded configuration."
  default     = null
}

variable "metrics" {
  type        = bool
  description = "Toggles Metrics collection of ECS Task resource usage (such as CPU, memory, network, and disk) and publishes to Coralogix. Default __'false'__ . Note that Logs and Traces are always enabled."
  default     = false
}

variable "task_definition_arn" {
  type = string
  description = "Existing Coralogix OTEL task definition ARN"
  default = null
}