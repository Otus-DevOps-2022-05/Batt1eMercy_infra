terraform {
  backend "s3" {
    endpoint                    = "storage.yandexcloud.net"
    bucket                      = "otus-terra2"
    region                      = "ru-central1-a"
    key                         = "stage/terraform.tfstate"
    access_key                  = "keyfrommaintfvars"
    secret_key                  = "keyfrommaintfvars"
    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
