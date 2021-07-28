cd stacks/1.0.0
terraform init
terraform validate
terraform plan -var-file=../../test/terraform.tfvars
terraform apply --auto-approve -var-file=../../test/terraform.tfvars