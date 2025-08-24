output "server_public_ip" {
  description = "The public IP address of our EC2 instance."
  value       = aws_instance.app_server.public_ip
}
