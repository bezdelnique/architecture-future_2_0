data "yandex_compute_image" "ubuntu" {
  family = "ubuntu-2204-lts"
}

resource "yandex_vpc_network" "future-net" {
  name = "future-net"
}

resource "yandex_vpc_subnet" "future-subnet" {
  name           = "future-subnet"
  zone           = var.zone
  network_id     = yandex_vpc_network.future-net.id
  v4_cidr_blocks = ["192.168.10.0/24"]
}

resource "yandex_compute_disk" "boot_disk" {
  for_each = var.vms

  name     = "${each.value.name}-boot-disk"
  type     = "network-hdd"
  zone     = var.zone
  size     = each.value.disk_size
  image_id = data.yandex_compute_image.ubuntu.id
}

resource "yandex_compute_instance" "vm" {
  for_each = var.vms

  name        = each.value.name
  zone        = var.zone
  platform_id = "standard-v3"

  resources {
    cores  = each.value.cores
    memory = each.value.memory
  }

  boot_disk {
    disk_id = yandex_compute_disk.boot_disk[each.key].id
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.future-subnet.id
    nat       = each.value.nat
  }

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
}
