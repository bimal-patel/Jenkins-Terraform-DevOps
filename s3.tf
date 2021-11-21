  resource "aws_s3_bucket" "terrafrm-plan-bucket" {
    Name = bms-ge-tfplan-bucket
    versioning {
      enabled = true
      
    }
}
