module "basic" {
  source = "../../"

  broker_name        = "jd-terraform"
  engine_version     = "3.8.17"
  host_instance_type = "mq.t3.micro"
  security_groups    = ["sg-0d44f1ae427d11697"]
  deployment_mode    = "CLUSTER_MULTI_AZ"
  subnet_ids         = ["subnet-b656c4ff", "subnet-027cfc538602413da"]
  username           = "admin"
  password           = "Jaclyn8jordyn$1"
  tags               = local.common_tags
}

