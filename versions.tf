terraform {
  required_version = ">= 1.0.0"

  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = ">= 0.101.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.2.3"
    }
    random = {
      source  = "hashicorp/random"
      version = "> 3.3"
    }
  }


  backend "s3" {
    endpoint = "storage.yandexcloud.net"
    region = "ru-central1"

    bucket = "backend-for-terr"
    key = "state"

    skip_region_validation = true
    skip_credentials_validation = true

    dynamodb_endpoint = "grpcs://ydb.serverless.yandexcloud.net:2135/?database=/ru-central1/b1ge9r1738nfvevpi3o7/etn53qtis7mc0tf61cg4"
    dynamodb_table = "backend-for-terr-table"
    }
    
}

