  resource "aws_s3_bucket" "terrafrm-plan-bucket" {
    bucket    = "bms-ge-terraform-plan-bucket"
    versioning {
      enabled = true
      
    }
}
