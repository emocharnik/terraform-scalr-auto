resource "null_resource" "awesome_resource_1" {
  provisioner "local-exec" {
    command = "echo $ENV"
    environment = {
      ENV = "Hello awesome world, I will be here forever!"
    }
  }
  triggers = {
    test = format("example+%s", timestamp())
  }
}
