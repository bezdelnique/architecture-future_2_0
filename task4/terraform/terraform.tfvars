vms = {
  vm1 = {
    name      = "data-hub-vm"
    cores     = 2
    memory    = 2
    disk_size = 8
    nat       = false
  }

  vm2 = {
    name      = "clinic-vm"
    cores     = 2
    memory    = 2
    disk_size = 8
    nat       = true
  }

  vm3 = {
    name      = "lakehouse-vm"
    cores     = 2
    memory    = 2
    disk_size = 8
    nat       = false
  }

  vm4 = {
    name      = "bi-vm"
    cores     = 2
    memory    = 2
    disk_size = 8
    nat       = true
  }

  vm5 = {
    name      = "ai-vm"
    cores     = 2
    memory    = 2
    disk_size = 8
    nat       = false
  }

  vm6 = {
    name      = "fintech-vm"
    cores     = 2
    memory    = 2
    disk_size = 8
    nat       = false
  }
}
