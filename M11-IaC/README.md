# Azure Bicep Commands

## convert a template to bicep

```bash
az bicep decompile --file storage01.json
```

## convert a bicep file to a template

```bash
az bicep build --file storage.bicep
```

## validate a bicep file

```bash
az bicep build --file storage.bicep --validate
```

## deploy a bicep file

```bash
az deployment group create --resource-group myResourceGroup --template-file storage.bicep
```

```powershell
New-AzResourceGroupDeployment -ResourceGroupName myResourceGroup -TemplateFile storage.bicep
```


# Deploy Terraform to Azure

## Install Terraform

```bash
choco install terraform
```

## Initialize Terraform

```bash
terraform init
```

## Validate Terraform

```bash
terraform validate
```

## Plan Terraform

```bash
terraform plan -var-file="variables.tfvars"
```

## Apply Terraform

```bash
terraform apply -var-file="variables.tfvars"
```

## Destroy Terraform

```bash
terraform destroy -var-file="variables.tfvars"
```
