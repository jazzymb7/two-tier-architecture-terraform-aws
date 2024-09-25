resource "aws_instance" "twotier_instance_1" {
    ami = var.ami_id
    instance_type = var.instance_type
    subnet_id = aws_subnet.twotierpubsubnet_1.id
    security_groups = [aws_security_group.twotier_sg.id]
    key_name = var.key_name
    user_data = filebase64("user-data.sh")
}

resource "aws_instance" "twotier_instance_2" {
    ami = var.ami_id
    instance_type = var.instance_type
    subnet_id = aws_subnet.twotierpubsubnet_2.id
    security_groups = [aws_security_group.twotier_sg.id]
    key_name = var.key_name
    user_data = filebase64("user-data.sh")

}

