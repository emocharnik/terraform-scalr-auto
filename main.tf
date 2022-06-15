resource "null_resource" "resource" {
  provisioner "local-exec" {
    command = "echo $ENV"
    environment = {
      ENV = "Hello awesome world!"
    }
  }
  triggers = {
    test = format("example+%s", timestamp())
  }
}
