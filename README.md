# terraform-aws-monitoring-cloudwatch

Monitoring layer on top of the ECS/RDS/ALB stack. CloudWatch alarms for CPU, 
memory, database connections, and ALB error rates. SNS handles alert routing.

## What's monitored

- ECS task CPU and memory
- RDS connection count and latency
- ALB 5xx rate and target response time

Alarms are scoped per tier so you know where to look when something fires.

## Modules

- `cloud-metrics` — CloudWatch alarms across all tiers
- `sns` — topics and subscriptions for alert delivery

## Usage

```bash
terraform init
terraform plan -var-file="env/dev/terraform.tfvars"
terraform apply -var-file="env/dev/terraform.tfvars"
```
