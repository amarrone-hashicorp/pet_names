# output.tf

output "names" {
  value = random_pet.my_pet.*.id
}

output "my_random_string" {
  value = random_string.my_random_string.result
}

output "names_formatted" {
  value = templatefile("output.tpl", { name_list = random_pet.my_pet })
}
