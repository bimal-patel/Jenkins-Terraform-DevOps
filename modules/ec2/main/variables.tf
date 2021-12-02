variable "name" {
    description = "Name to be used on all the resources as identifier"
    type = string
    default = ""
}

variable "prefix" {
    description = "the default prifix need to be used in all resources"
    type = string
    default = "bms"
    
}

variable "instance_type" {
  description = "This bblock is used to specify the trype of ec2 instance needed"
  default = "t2.micro"
  
}