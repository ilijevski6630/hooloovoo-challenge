// Ran this from my local computer

resource "aws_instance" "jenkins" {
  ami = "ami-0bb3fad3c0286ebd5"
  instance_type = "t2.micro"
  security_groups = [ "enable-ssh","JenkinsWebUI" ]
  key_name = "ilijevskia"
  tags = {
    Name = "Jenkins Master"
  }
}