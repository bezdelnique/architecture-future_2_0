output "vm_info" {
  value = {
    for key, vm in yandex_compute_instance.vm :
    key => {
      name        = vm.name
      internal_ip = vm.network_interface[0].ip_address
      external_ip = vm.network_interface[0].nat_ip_address
    }
  }
}
