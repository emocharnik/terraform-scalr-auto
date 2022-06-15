resource "null_resource" "resource1" {
  provisioner "local-exec" {
    command = "echo $ENV"
    environment = {
      ENV = "Hello awesome world, I'm here, again!"
    }
  }
  triggers = {
    test = format("example+%s", timestamp())
  }
}
