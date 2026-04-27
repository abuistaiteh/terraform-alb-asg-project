resource "aws_launch_template" "this" {
  name_prefix   = "${var.project_name}-lt-"
  image_id      = "ami-0c02fb55956c7d316"
  instance_type = "t3.micro"
  network_interfaces {
    associate_public_ip_address = true
    security_groups             = [var.ec2_sg_id]
  }
  user_data = base64encode(file("${path.module}/../../user_data.sh"))

  tag_specifications {
    resource_type = "instance"

    tags = merge(var.tags, {
      Name = "${var.project_name}-ec2"
    })
  }
}