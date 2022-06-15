resource "null_resource" "resource" {
  provisioner "local-exec" {
    command = "echo $ENV"
    environment = {
      ENV = "Hello awesome world, I'm here, again [2]!"
    }
  }
  triggers = {
    test = format("example+%s", timestamp())
  }
}
