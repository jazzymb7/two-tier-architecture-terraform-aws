resource "aws_lb_target_group" "twotier_target_group" {
  name     = var.tg_name
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.twotiervpc.id
}

resource "aws_lb_target_group_attachment" "tg-attachment-1" {
  target_group_arn = aws_lb_target_group.twotier_target_group.id
  target_id        = aws_instance.twotier_instance_1.id
  port             = 80
}

resource "aws_lb_target_group_attachment" "tg-attachment-2" {
  target_group_arn = aws_lb_target_group.twotier_target_group.id
  target_id        = aws_instance.twotier_instance_2.id
  port             = 80
}