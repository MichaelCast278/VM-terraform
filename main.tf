# main.tf

provider "aws" {
  region = "us-east-1"  # Cambia la región si es necesario
}

resource "aws_instance" "example_server" {
  ami           = "ami-084568db4383264d4"  # Reemplaza con la AMI correcta para tu región
  instance_type = "t2.micro"
  
  # Definición de almacenamiento adicional (volumen EBS)
  root_block_device {
    volume_size = 20               # Tamaño del volumen en GB (ajusta el tamaño según sea necesario)
    volume_type = "gp3"            # Tipo de volumen (gp3 es el tipo de SSD de propósito general)
    delete_on_termination = true   # Si la instancia se elimina, también se elimina este volumen
  }

  key_name = "mi-clave-terraform"  # Especifica tu clave aquí

  tags = {
    Name = "Mi Instancia Terraform"
  }
}
