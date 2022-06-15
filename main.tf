resource "null_resource" "resource" {
  provisioner "local-exec" {
    command = "echo $ENV"
    environment = {
      ENV = "Hello awesome world, I will be here!"
    }
  }
  triggers = {
    test = format("example+%s", timestamp())
  }
}
