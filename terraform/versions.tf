terraform {
    required_version = ">= 1.5.7"

    required_providers {
        yandex = {
            source  = "yandex-cloud/yandex"
            version = ">= 0.87.0"
        }
    }

     # Описание бэкенда хранения состояния
    backend "s3" {
        endpoint = "https://storage.yandexcloud.net"
        bucket     = "terraform-state-std-ext-019-01"
        region     = "ru-central1"
        key        = "terraform.tfstate"

        skip_region_validation      = true
        skip_credentials_validation = true
    }
}
