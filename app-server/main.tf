# Create a security group
resource "aws_security_group" "json-server-security-group" {
  name_prefix = "web-sg"
  
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 3000
    to_port = 3000
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  tags = {
    Name = "Json Server Security Group"
  }
}

# Create a key pair
resource "aws_key_pair" "deployer" {
  key_name   = "deployer"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDIcctmrmFIR2zlAgkoGvIa3Lu3VhsGU+HSXZbfqjygzJSgFsKunColPS7hnWpG4oMpW26GT+RI2KqyY3u622MCizwsyZNAWOlZHju47nzzfyveg1I4YVepbdoaeXc3GYz4RPKnn19PiXRdtWGr2LSatT3pTgsZxitM4DvTrLYwJbHtyPoQzRUbozahXFbAllhVE3MOHWQZapbNb5x+DC6NVPbjICl2CBDQSDBs6cFLzzrKO5MtWwpcYxe85UnhIz663zeBGixVyddLuKe2ukRgrKd2xX6reMHhz87h06Q1b87lnayrejh8BNSv4FH3nYGvz3Nx3J7K1IlXIQhwyrhC72htpbY4CE1ulEY1Yb4AWshiEi+P7XD4URk13ff6d9Gpy3Tp9DCaQIms5HmfvS9WZTtc/unxn49glcbnzB+ADEOwFPQfGgwCymzZ6gR2qolkMFI7wVMjNFjTrrisLNpzmKarU02aC9oycKR1KsUsBTg7HY8sNL+bRyXId1sa6rs= henkel@henkel-IdeaPad-3-15ALC6"
}

# Launch an EC2 instance
resource "aws_instance" "app-server-instance" {
  ami           = var.ami_image
  instance_type = var.instance_type
  key_name      = aws_key_pair.deployer.key_name
  vpc_security_group_ids = [aws_security_group.json-server-security-group.id]

  tags = {
    Name = "App Server Instance"
  }
}
