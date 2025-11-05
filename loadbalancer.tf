resource "aws_elb" "my-elb" {
name = "terraform-lb"
subnets = [aws_subnet.two.id, aws_subnet.three.id] # to attach subnets here
listener {
instance_port = 80 #where the application running on port we should give port number
instance_protocol = "httpd"
lb_port = 80
lb_protocol = "http"
}
}
