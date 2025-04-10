# outputs.tf

output "instance_public_ip" {
  description = "La IP pública de la instancia EC2"
  value       = aws_instance.example_server.public_ip
}

output "instance_id" {
  description = "El ID de la instancia EC2"
  value       = aws_instance.example_server.id
}
