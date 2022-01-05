#main.tf

variable "pet_name_length" {
  type        = number
  description = "how many words to use in the pet name"
  default     = 5
}

variable "pet_name_count" {
  type        = number
  description = "how many names to generate"
  default     = 4
}

variable "pet_name_separator" {
  type        = string
  description = "separator character between words for the pet name"
  default     = " "
}

resource "random_pet" "my_pet" {
  count     = var.pet_name_count
  length    = var.pet_name_length
  separator = var.pet_name_separator
}

output "names" {
  value = random_pet.my_pet.*.id
}

output "names_formatted" {
  value = templatefile("output.tpl", { name_list = random_pet.my_pet })
}
