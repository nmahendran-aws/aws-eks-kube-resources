# Terraform Remote State Datasource
# data "terraform_remote_state" "eks" {
#   backend = "S3"

#   config = {
#     path = "../kube-manifests/terraform.tfstate"
#   }
# }

# Terraform Remote State Datasource - Remote Backend AWS S3
data "terraform_remote_state" "eks" {
  backend = "s3"
  config = {
    bucket = "my-project-terraform-on-aws-eks"
    key    = "dev/eks-cluster/terraform.tfstate"
    region = "us-east-1" 
  }
}