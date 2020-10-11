resource "aws_ecr_repository" "spring-rest-crud" {
  name                 = "spring-rest-crud"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
}

resource "aws_ecr_repository" "ui-crud" {
  name                 = "ui-crud"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
}