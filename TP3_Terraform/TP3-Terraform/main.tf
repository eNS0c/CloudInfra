
data "aws_vpc" "default" {
  default = true
}

data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

resource "aws_lb" "DGD_LoadBalancer" {
  name               = "DGD-LoadBalancer"
  internal           = false
  load_balancer_type = "application"
  #security_groups    = [aws_security_group.lb_sg.id]
  subnets            = var.subnet_ids

  enable_deletion_protection = false
}

resource "aws_lb_target_group" "DGD" {
  name        = "DGD-TargetGroup"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = data.aws_vpc.default.id
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.DGD_LoadBalancer.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.DGD.arn
  }
}

resource "aws_launch_template" "DGD_LaunchTemplate" {
  name_prefix   = "DGD_LaunchTemplate"
  image_id      = var.image_id
  instance_type = var.instance_type
  key_name = var.key_name
}


resource "aws_autoscaling_group" "DGD_AutoScaling" {
  capacity_rebalance  = true
  desired_capacity    = 2
  max_size            = 3
  min_size            = 1
  vpc_zone_identifier = data.aws_subnets.default.ids
  target_group_arns = [aws_lb_target_group.DGD.arn]

    launch_template {
        id      = aws_launch_template.DGD_LaunchTemplate.id
        version = "$Latest"
    }
}

