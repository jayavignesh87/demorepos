

provider "aws" {
  access_key = "AKIAW5IZRWOYZKSPASIG"
  secret_key = "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"
  region = "us-east-1"
}


variable "var_cidr" {
  type = string

}

variable "var_vpcname" {
  type = string
}

variable "var_bktname" {
  type = string

}

resource "aws_vpc" "dep1" {
  cidr_block = var.var_cidr
  tags = {
    "Name" = var.var_vpcname
  }
}

resource "aws_s3_bucket" "dep2" {
  bucket = var.var_bktname
  tags = {
    "Name" = var.var_bktname
  }

}