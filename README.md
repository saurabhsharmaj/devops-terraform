How does Terraform work?
🔹 1. Write
In this phase, the user writes Terraform configuration files using HashiCorp Configuration Language (HCL). These files describe the desired state of cloud infrastructure, such as servers, networks, databases, etc.
🔹 2. Plan
When the user runs the terraform plan command, Terraform creates an execution plan. This plan shows what actions Terraform will take to reach the desired state. It helps users preview changes before they are made.
🔹 3. Apply
After reviewing the plan, the user executes terraform apply. This command provisions or updates the infrastructure by interacting with the cloud provider’s APIs. Terraform ensures that resources are created in the correct order and manages any dependencies.
