variable "vms" {
  type = map(object({
    name      = string
    cores     = number
    memory    = number
    disk_size = number
    nat       = bool
  }))
}

variable "zone" {
  type        = string
  description = "Yandex Cloud availability zone"
  default     = "ru-central1-d"
}
