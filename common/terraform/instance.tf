// Ran this from my local computer

resource "aws_instance" "jenkins" {
  ami = "ami-0bb3fad3c0286ebd5" //Amazon Linux 2
  instance_type = "t2.micro"
  security_groups = [ "enable-ssh","JenkinsWebUI" ]
  key_name = "ilijevskia"
  tags = {
    Name = "Jenkins Master"
  }
}

resource "aws_instance" "minikube" {
  ami = "ami-0d4002a13019b7703" //CentOS7
  instance_type = "t2.micro"
  security_groups = [ "enable-ssh" ]
  key_name = "ilijevskia"
  tags = {
    Name = "Minikube"
  }
}