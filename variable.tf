# variable.tf

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
