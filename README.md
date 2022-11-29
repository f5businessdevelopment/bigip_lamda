# bigip_lamda
One Click Deploy bigip with lamda function providing nginx container backend

- cft.tf file deploys the aws lamda function
- cft.tf uses AWS ECR and retrives the nginx container image
- cft.tf also configures trigger and gateway API
- main.tf file uses terraform bigip aws module to deploy 1nic instance of BIG-IP
- main.tf also uses DO to install AS3, FAST, Service Discovery RPM
- main.tf uses terraform null resource to deploy AS3 with FQDN Service Discovery

**Note**: Sometimes the API gateway in AWS provides non alphanumeric ID which results
          into failure of deploying AS3, then you have to do it manually, as BIG-IP
          does not take non-alphanumeric FQDN 

## How to use this repo

```git clone https://github.com/f5businessdevelopment/bigip_lamda.git
```   
cd bgip_lamda

```
terraform init & terraform plan & terraform apply -auto-approve

```    
