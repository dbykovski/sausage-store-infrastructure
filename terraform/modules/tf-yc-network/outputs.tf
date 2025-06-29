output "subnet_ids" {
  description = "ID всех подсетей"
  value       = { for k, s in yandex_vpc_subnet.default : k => s.id }
}