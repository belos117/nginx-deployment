resource "aws_key_pair" "bastion_key" {
  key_name   = "bastion_key"
  public_key = file("~/.ssh/id_rsa.pub") 
}

resource "tls_private_key" "bastion" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "bastion_private_key" {
  content         = tls_private_key.bastion.private_key_pem
  filename        = "bastion-key.pem"
  file_permission = "0400"
}
