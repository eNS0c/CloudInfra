variable "subnet_ids" {
  type    = list(string)
  default = ["subnet-01bac5268bd103c55", "subnet-02ae3d0545ef9967e", "subnet-0655f72c900baddc5"]
}

variable "image_id" {
  type    = string
  default = "ami-0fbe42fe87ff22911"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "key_name" {
  type    = string
  default = "DGD_KEYPair"
}