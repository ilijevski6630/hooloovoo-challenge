// Ran this from my local computer

resource "aws_instance" "jenkins" {
  ami = "ami-0bb3fad3c0286ebd5" //Amazon Linux 2
  instance_type = "t2.micro"
  security_groups = [ "enable-ssh","JenkinsWebUI","JenkinsWebhook"]
  key_name = "ilijevskia"
  iam_instance_profile = "EC2TOAWSSERVICES"
  tags = {
    Name = "Jenkins Master"
  }
}

resource "aws_instance" "minikube" {
  ami = "ami-0c4c42893066a139e" //Ubuntu20.04
  instance_type = "t3.medium"
  security_groups = [ "enable-ssh","minikube" ]
  key_name = "ilijevskia"
  iam_instance_profile = "EC2TOAWSSERVICES"
  tags = {
    Name = "Minikube"
  }
}

resource "aws_instance" "haproxy" {
  ami = "ami-0bb3fad3c0286ebd5" //Amazon Linux 2
  instance_type = "t2.micro"
  security_groups = [ "haproxy"]
  key_name = "ilijevskia"
  iam_instance_profile = "EC2TOAWSSERVICES"
  tags = {
    Name = "HAProxy"
  }
}