resource "aws_lb" "twotier_elb" {
  name               = var.elb_name
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.twotier_sg.id]
  subnets            = [aws_subnet.twotierpubsubnet_1 , aws_subnet.twotierpubsubnet_2]
  
  tags = {
    Environment = "production"
  }
}

resource "aws_lb_listener" "front_end" {
  load_balancer_arn = aws_lb.twotier_elb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.twotier_target_group.arn
  }
}