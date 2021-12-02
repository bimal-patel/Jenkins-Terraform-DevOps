#Addfing Ge ta15 default app bucket
resource "aws_s3_bucket" "s3_bucket" {
  Name = "${var.aws_s3_bucket}"
  
  }


  resource "aws_s3_bucket" "terrafrm-plan-bucket" {
    Name = bms-ge-tfplan-bucket
    versioning {
      enabled = true
      
    }
  }
