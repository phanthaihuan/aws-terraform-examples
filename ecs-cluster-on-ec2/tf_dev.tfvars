# General Deployment Variables
env      = "dev"
nickname = "ecs-cluster-on-ec2"

tags = {
  environment      = "dev"
  nickname         = "ecs-cluster-on-ec2"
  application_name = "ECS Cluster with EC2 type"
  application_desc = "Create a ECS Cluster with EC2 type for containerized applications"
  emails           = "group@example.com"
  repo             = "https://github.com/camillehe1992/aws-terraform-examples"
}

# Project Specific Variables
ecs_cluster_name          = "app-ecs-cluster"
image_id                  = "ami-0270a3bf517b05fc0" # ECS optimaized arm64
instance_type             = "t4g.micro"
asg_max_size              = 5
asg_min_size              = 0
asg_desired_size          = 1
health_check_grace_period = 300
subnet_ids                = ["subnet-04839c488f31e2829", "subnet-08122d3fc6e3ce9b1"]
