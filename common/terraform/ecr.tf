resource "aws_ecr_repository" "spring-rest-crud" {
  name                 = "spring-rest-crud"
  image_tag_mutability = "IMMUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
}

resource "aws_ecr_repository" "hooloovoo-ecr-frontend" {
  name                 = "hooloovoo-ecr-frontend"
  image_tag_mutability = "IMMUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
}