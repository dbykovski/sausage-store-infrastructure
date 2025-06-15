terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
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

provider "yandex" {
  cloud_id  = "b1g3jddf4nv5e9okle7p"
  folder_id = "b1gfs4o551cpikr20mma"
  zone      = "ru-central1-a"
}