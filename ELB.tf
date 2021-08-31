

## Ref - https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb
#  Update subnet id with VPC public   => update

/*
resource "aws_lb" "AWS-POC-LoadBalancer" {
  name               = "AWS-POC-LoadBalancer"
  internal           = false                # internal - (Optional) If true, the LB will be internal.
  load_balancer_type = "application"
  count = 2
  subnet_id = var.vpc.public_subnets

      tags = {
    Environment = "AWS-POC-Tag"
  }
} */