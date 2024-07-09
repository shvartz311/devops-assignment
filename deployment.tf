resource "kubernetes_deployment" "mongo_test" {
  metadata {
    name = "mongo-test"
    labels = {
      app = "mongo-test"
    }
  }
  spec {
    replicas = 1
    selector {
      match_labels = {
        app = "mongo-test"
      }
    }
    template {
      metadata {
        labels = {
          app = "mongo-test"
        }
      }
      spec {
        container {
          name  = "mongo"
          image = "bitnami/mongodb:latest"
          port {
            container_port = 27017
          }
          volume_mount {
            mount_path = "/data/db"
            name       = "mongo-storage"
          }
        }
        volume {
          name = "mongo-storage"
          persistent_volume_claim {
            claim_name = kubernetes_persistent_volume_claim.test_claim.metadata[0].name
          }
        }
      }
    }
  }
}
