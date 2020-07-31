# demo-4
a simply example of using **S3 backend**

## Files 
|File name| Description|
|---|---|
|provider.tf| All the configuration related to the provider. For the example AWS.|
|backend.tf| All setting about the backend. S3 bucket must be created previously.|
|vars.tf|All variables needed to configure the provider or intance.|
|intance.tf|The descrption of the instance we want.|

## Commands
```
terraform init
```
```
terraform apply
```
```
terraform destroy
```