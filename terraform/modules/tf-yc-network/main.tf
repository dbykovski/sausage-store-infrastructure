data "yandex_vpc_network" "default" {
  name = "default"
}

data "yandex_vpc_subnets" "default" {
  for_each = toset(["ru-central1-a", "ru-central1-b"])

  name = "${data.yandex_vpc_network.default.name}-${each.key}"
} 