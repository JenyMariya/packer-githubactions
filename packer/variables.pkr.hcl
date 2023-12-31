variable "ami"{
  default = "ami-0a0f1259dd1c90938"
}

variable "instance_type" {
  default     = "t2.micro"
}

variable "project"{
  default = "nyka"
}

variable "env"{
  default = "production"
}

locals {
    image-timestamp = "${formatdate("DD-MMM-YYYY-hh-mm", timestamp())}"
    image_name = "${var.project}-${var.env}-${local.image-timestamp}"
}
