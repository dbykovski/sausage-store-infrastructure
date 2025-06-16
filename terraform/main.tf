module "instance" {
  source = "./tf-yc-instance"  # Путь к модулю ВМ

  # Обязательные параметры модуля ВМ
  subnet_id = module.network.yandex_vpc_subnets["ru-central1-a"].id  # Используем подсеть из модуля сети
  zone      = "ru-central1-a"  # Должна совпадать с зоной подсети
}

module "instance" {
  source = "./tf-yc-network"  # Путь к модулю ВМ
}