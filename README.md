What is Terraform ?
Terraform is an open-source Infrastructure as Code (IaC) tool developed by HashiCorp, used in DevOps and Cloud computing to automate the provisioning and management of infrastructure resources.
Instead of manually setting up infrastructure on platforms like AWS, Azure, or Google Cloud, Terraform allows users to write declarative configuration files (usually with .tf extension) that define the desired state of infrastructure.
Once the code is written, running a simple terraform apply command can create or modify infrastructure automatically, ensuring consistency, repeatability, and scalability.

>>>>>>>>>>>>>>>>>>>>

Key Features:
•	Multi-cloud compatibility (works with AWS, Azure, GCP, etc.)
•	Infrastructure version control via tools like Git
•	Reusability through modules
•	Resource lifecycle management (create, update, delete)

>>>>>>>>>>>>>>>>>>>>

Example:
A DevOps engineer can define an EC2 instance, database, and VPC in code, and provision them all at once using Terraform.
Terraform plays a vital role in modern DevOps workflows by improving efficiency, consistency, and automation of cloud environments.

>>>>>>>>>>>>>>>>>>>>

How does Terraform work?
🔹 1. Write
In this phase, the user writes Terraform configuration files using HashiCorp Configuration Language (HCL). These files describe the desired state of cloud infrastructure, such as servers, networks, databases, etc.
🔹 2. Plan
When the user runs the terraform plan command, Terraform creates an execution plan. This plan shows what actions Terraform will take to reach the desired state. It helps users preview changes before they are made.
🔹 3. Apply
After reviewing the plan, the user executes terraform apply. This command provisions or updates the infrastructure by interacting with the cloud provider’s APIs. Terraform ensures that resources are created in the correct order and manages any dependencies.
