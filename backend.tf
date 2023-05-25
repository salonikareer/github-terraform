terraform {
  backend "s3" {
    bucket         = "forstoringtf" 
    key            = "../tfstate"
    region         = "us-east-1"  
  }
}
