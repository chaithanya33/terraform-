resource "aws_security_group" "my-sg" {   
name = "chaithu-sg"
description = " it is creted by terraform"

# inbound rules are called ingress and outbound are called egress#

ingress {
from_port = 22
to_port = 22
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}

ingress {
from_port = 8080
to_port = 8080
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}

ingress {
from_port = 8081
to_port = 8081
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}

ingress {
from_port = 9000
to_port = 9000
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}


egress {
from_port = 0
to_port = 0
protocol = "-1"
cidr_blocks = ["0.0.0.0/0"]
}
}



