name: Terraform Destroy

on:
  workflow_dispatch:

jobs:
  terraform_destroy:
    runs-on: ubuntu-latest
    env:
      
        AWS_REGION: 'us-east-1'
    
    steps:
      - name: Checkout repository
        uses: actions/checkout@v2
        
      - name: Set up Terraform
        uses: hashicorp/setup-terraform@v2
        with:
          terraform_version: 1.1.7
    
      - name: Terraform Init
        run: terraform init

      - name: Terraform Destroy
        run: terraform destroy -auto-approve
