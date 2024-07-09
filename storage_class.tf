resource "kubernetes_storage_class" "standard_storage" {
  metadata {
    name = "standard"
  }
  storage_provisioner = "ebs.csi.aws.com"
  volume_binding_mode = "WaitForFirstConsumer"
  parameters = {
    type = "gp3"
  }
}
