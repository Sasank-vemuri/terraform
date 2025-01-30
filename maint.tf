resource "local_file" "my_colour" {
   filename = "?home/ec2-user/colour.txt"
   content = " my ${random_pet.a_pet.id}"
   depends_on = [random_pet.a_pet]
}

resource "random_pet" "a_pet" {
   prefix  = var.prefix
   separator = "."
   length  = 2
}


output "colour" {
  value = local_file.my_colour.content
  }
