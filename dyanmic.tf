 # to reduce the no of lines in or to allow only specfic ports we use dyanmic blocks #
# to reduce the repetative code we use dyanmic blocks #

resource "aws_security_group" {
name = "chaithu-sg" 
description = "dyanmic blocks for specficy port"

dynamic "ingress" {
for_each = var.ports

content {
from_port = ingress.value
to_port = ingress.value
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}
} 

egress {
from_port =0
to_port =0
protocol = "-1"
cidr_blocks = ["0.0.0.0/0"]
}
}

variable "ports" {
type = list (any)
default = [22 ,3306 ,8080,8081,9000]
}

