variable "version-name" {
  description = "Représente la version de terraform utilisée"
  default     = "4.61.0"
  type        = string
}

variable "region-name" {
  description = "Région où se créera l'infrastructure"
  default     = "us-east-1"
}

variable "ami-name" {
  description = "This is the AMI of the instance"
  default     = "ami-026b57f3c383c2eec"
}

variable "instance-type-name" {
  description = "This is the instance type of the instance"
  default     = "t2.micro"
}

variable "resume-s3" {
  description = "Here is the name of the s3 bucket created in AWS"
  default     = "poly-resume-s3"
}

variable "resume-DnDB" {
  description = "Here is the name of dynamoDB created in AWS"
  default     = "resume-log"
}