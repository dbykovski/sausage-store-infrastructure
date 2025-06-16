variable "platform_id" {
    default = "standard-v1"
    description = "Yandex Cloud platform_id"
    type = string
    sensitive = true    
}

variable "network_zone" {
    default = "ru-central1-a"
    description = "Yandex Cloud zone"
    type = string
    sensitive = true    
}

variable "image_id" {
    default = "fd80qm01ah03dkqb14lc"
    description = "Yandex Cloud image_id"
    type = string
    sensitive = true    
}

variable "subnet_id" {
    default = "e9bdpppjobeo3atffkdu"
    description = "Yandex Cloud subnet_id"
    type = string
    sensitive = true    
}

variable "cores" {
    default = "2"
    description = "VM cores"
    type = string
    sensitive = true    
}

variable "memory" {
    default = "2"
    description = "VM memory"
    type = string
    sensitive = true    
}

variable "disk_size" {
    default = "30"
    description = "VM disk size"
    type = string
    sensitive = true    
}