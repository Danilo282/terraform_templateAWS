# Configurando o bucket-s3
resource "aws_s3_bucket" "danilo-s3"{
  bucket = "projeto-danilo-s3"
  acl = "private"

  tags = {
      Name = "projeto-danilo-s3"
      Environment = "DEV"
  }
}