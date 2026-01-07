resource "aws_key_pair" "mykp" {  # resource name and label name)
key_name = "terraform-keypair"
public_key = file("/root/.ssh/id_rsa.pub")
