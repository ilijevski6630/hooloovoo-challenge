resource "aws_ecr_repository" "hooloovoo-ecr-backend" {
  name                 = "hooloovoo-ecr"
  image_tag_mutability = "IMMUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
}

resource "aws_ecr_repository" "hooloovoo-ecr-frontend" {
  name                 = "hooloovoo-ecr"
  image_tag_mutability = "IMMUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
}