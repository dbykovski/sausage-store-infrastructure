variable "network_zone" {
  description = "Yandex.Cloud network availability zones"
  type        = string
  default     = "ru-central1-a"
}

data "yandex_vpc_network" "default" {
  name = "default"
}

data "yandex_vpc_subnet" "default" {
  name = "${data.yandex_vpc_network.default.name}-${var.network_zone}" 
}

resource "yandex_compute_instance" "vm-1" {
    name = "chapter5-lesson2-std-ext-019-01"

    # Конфигурация ресурсов:
    # количество процессоров и оперативной памяти
    resources {
        cores  = 2
        memory = 2
    }

    # Загрузочный диск:
    # здесь указывается образ операционной системы
    # для новой виртуальной машины
    boot_disk {
        initialize_params {
            image_id = "fd80qm01ah03dkqb14lc"
        }
    }

    # Сетевой интерфейс:
    # нужно указать идентификатор подсети, к которой будет подключена ВМ
    network_interface {
        subnet_id = "e9bdpppjobeo3atffkdu"
        nat       = false
    }

    # Метаданные машины:
    # здесь можно указать скрипт, который запустится при создании ВМ
    metadata = {
        user-data = "${file("./user_data.yml")}"
    }
}

output "ip_address" {
  value = yandex_compute_instance.vm-1.network_interface.0.ip_address
}