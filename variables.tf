# variables.tf

variable "ami_id" {
  description = "ID de la Amazon Machine Image (AMI) a utilizar"
  default     = "ami-12345678"  # Reemplaza con la AMI de tu elección
}

variable "instance_type" {
  description = "Tipo de instancia EC2"
  default     = "t2.micro"
}

variable "region" {
  description = "Región de AWS donde se desplegará la instancia"
  default     = "us-east-1"
}
