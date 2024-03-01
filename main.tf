resource "null_resource" "terraform-debug" {
  triggers = {
    always_run = "${timestamp()}"
  }
  provisioner "local-exec" {
    command = "packer init .; packer build aws-golden-image.pkr.hcl"
  }
}