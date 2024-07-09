resource "kubernetes_persistent_volume_claim" "test_claim" {
  metadata {
    name = "test-claim"
  }
  spec {
    access_modes = ["ReadWriteOnce"]
    resources {
      requests = {
        storage = "8Gi"
      }
    }
    storage_class_name = "standard"
  }
}
