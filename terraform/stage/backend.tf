terraform {
  backend "s3" {
    endpoint                    = "storage.yandexcloud.net"
    bucket                      = "otus-terra2"
    region                      = "ru-central1-a"
    key                         = "stage/terraform.tfstate"
    access_key                  = "YCAJEBKRsbdvwQDykmITGzStF"
    secret_key                  = "YCMTKhsd6uBUED9tq96Y5PvL5c0CUBxuB-fau66y"
    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
