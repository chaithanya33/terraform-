resource "aws_autoscalling_group" "my-asg" {
name = "terraform-asg"
launch_configuration = aws_launch_configuration.mylc.id #|| resource template name
min_size = 2
max_size = 6
desired_capaicity = 2
helth_check_type = "EC2"

load_balancr = [aws_alb.id]
vpc_zone_identifyer = [aws_subnet.two.id,aws_subnet.three.id] #attach to subnet ids
}
