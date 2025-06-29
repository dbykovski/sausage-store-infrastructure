resource "yandex_vpc_network" "default" {
  name = var.network_name
}

resource "yandex_vpc_subnet" "default" {
  for_each       = var.subnets
  name           = "${var.network_name}-subnet-${each.key}"
  zone           = each.value.zone
  network_id     = yandex_vpc_network.default.id
  v4_cidr_blocks = [each.value.cidr_block]
}