# demo-9
An example of creating a **VPC** with **an intance with a ebs** within a public subnet.

## Files
|Filename|Description|
|---|---|
|provider.tf|All configurations regarding the aws provider.|
|vars.tf|All variables need to configure the provider and resources. If the user doesn't provide values for them, the default aws profile is provides automatically.|
|vpc.tf|All configurations regarding the vpc configuration, private and public subnets.|
|nat.tf|All configurations regarding the nat configuration and the private subnets.|
|security-group.tf|An example of security group for allowing acces from anyone, and only allowing resposes from ssh.|
|instance.tf|All configuration regarding to the ec2 instance.|
|key-pair.tf|Creates a key pair for accesing the ec2 intance|

## Commands
```
terraform init
```
```
sudo chmod 400 ./mykey
```
```
terraform plan
```
```
sudo ssh <public ip address> -l ubuntu -i mykey
```
```
terraform destroy
```
