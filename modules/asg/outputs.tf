resource "aws_autoscaling_group" "this" {
  desired_capacity = 2
  max_size         = 3
  min_size         = 1
  vpc_zone_identifier = var.private_subnet_ids
  launch_template {
    id      = aws_launch_template.this.id
    version = "$Latest"  
  
  
  }
  target_group_arns = [var.target_group_arn]
  health_check_type = "EC2"
    tag {
      key                 = "Name"
      value               = "${var.project_name}-asg"
      propagate_at_launch = true
    }
  }
output "asg_name" {
  value = aws_autoscaling_group.this.name
}