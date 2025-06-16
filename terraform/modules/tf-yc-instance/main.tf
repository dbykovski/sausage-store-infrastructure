resource "yandex_compute_instance" "vm-1" {
    name = "chapter5-lesson2-std-ext-019-01"
    platform_id = var.platform_id
    zone     = var.network_zone

    scheduling_policy {
        preemptible = false # false для обычной ВМ, true для прерываемой
    }

    # Конфигурация ресурсов:
    # количество процессоров и оперативной памяти
    resources {
        cores  = var.cores
        memory = var.memory
    }

    # Загрузочный диск:
    # здесь указывается образ операционной системы
    # для новой виртуальной машины
    boot_disk {
        initialize_params {
            image_id = var.image_id
            size = var.disk_size
        }
    }

    # Сетевой интерфейс:
    # нужно указать идентификатор подсети, к которой будет подключена ВМ
    network_interface {
        subnet_id = var.subnet_id
        nat       = false
    }

    # Метаданные машины:
    # здесь можно указать скрипт, который запустится при создании ВМ
    metadata = {
        user-data = "${file("./user_data.yml")}"
    }
}