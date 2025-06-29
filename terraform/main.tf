module "network" {
  source = "./modules/tf-yc-network"  # Путь к модулю ВМ

  network_name = "std-ext-019-01"
  subnets      = {
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

module "instance" {
  source = "./modules/tf-yc-instance"  # Путь к модулю ВМ
  name = "chapter5-lesson2-std-ext-019-01"
  platform_id = "standard-v1"
  network_zone = "ru-central1-a"
  cores = "2"
  memory = "2"
  disk_size = "50"
  subnet_id   = module.network.subnet_ids["a"]
}