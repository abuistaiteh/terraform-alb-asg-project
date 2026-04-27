resource "aws_autoscaling_policy" "scale_up" {
  name = "scale_up_policy"
  autoscaling_group_name = var.asg_name
  adjustment_type = "ChangeInCapacity"
  scaling_adjustment = 1
  cooldown = 300


}
resource "aws_autoscaling_policy" "scale_down" {
  name = "scale_down_policy"
  autoscaling_group_name = var.asg_name
  adjustment_type = "ChangeInCapacity"
  scaling_adjustment = -1
  cooldown = 300
  
}
resource "aws_cloudwatch_metric_alarm" "high_cpu" {
  alarm_name = "high_cpu_alarm"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods = 2
  metric_name = "CPUUtilization"
  namespace = "AWS/EC2"
  period = 120
  statistic = "Average"
  threshold = 70
  alarm_description = "Alarm when CPU exceeds 70%"
  dimensions = {
    AutoScalingGroupName = var.asg_name
  }
 
}
resource "aws_cloudwatch_metric_alarm" "low_cpu" {
  alarm_name = "low-cpu-alarms"
  comparison_operator = "LessThanThreshold"
  evaluation_periods = 2
  metric_name = "CPUUtilization"
  namespace = "AWS/EC2"
  period = 120
  statistic = "Average"
  threshold = 20
  alarm_description = "Alarm when CPU is below 20%"
  dimensions = {
    AutoScalingGroupName = var.asg_name
  }
}