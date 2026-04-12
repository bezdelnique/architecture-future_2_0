vms = {
  # large
  vm1 = {
    name      = "data-hub-vm"
    cores     = 24
    memory    = 64
    disk_size = 6000
    nat       = false
  }

  # medium
  vm2 = {
    name      = "clinic-vm"
    cores     = 16
    memory    = 32
    disk_size = 5
    nat       = true
  }

  # large
  vm3 = {
    name      = "lakehouse-vm"
    cores     = 24
    memory    = 64
    disk_size = 6000
    nat       = false
  }

  # small
  vm4 = {
    name      = "bi-vm"
    cores     = 8
    memory    = 16
    disk_size = 5
    nat       = false
  }

  # medium
  vm5 = {
    name      = "ai-vm"
    cores     = 32
    memory    = 64
    disk_size = 10
    nat       = false
  }

  # medium
  vm6 = {
    name      = "fintech-vm"
    cores     = 16
    memory    = 32
    disk_size = 5
    nat       = false
  }
}
