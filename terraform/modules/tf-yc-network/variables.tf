variable "network_name" {
  description = "Имя VPC сети"
  type        = string
}

variable "subnets" {
  description = "Map подсетей с зоной и cidr"
  type = map(object({
    zone       = string
    cidr_block = string
  }))
  default = {
    "a" = {
      zone       = "ru-central1-a"
      cidr_block = "10.128.0.0/24"
    },
    "b" = {
      zone       = "ru-central1-b"
      cidr_block = "10.128.1.0/24"
    }
  }
}