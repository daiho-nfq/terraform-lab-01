## How to use it ?
1. Setup variables like project name, region name, availability zones, CIDR etc  correctly in terraform.tfvars file.
2. Setup your terraform credential using 
```
$ export AWS_ACCESS_KEY_ID="<YOUR_KEY_ID>"
$ export AWS_SECRET_ACCESS_KEY="<YOUR_SECRET>"
```
3. Run Terraform using 
```
terraform init
terraform apply
```
4. To delete created resources
```
terraform destroy
```
