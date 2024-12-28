# Terraform AWS Infrastructure Project

This project demonstrates the use of Terraform to set up essential AWS infrastructure components. It includes the creation of an S3 bucket with versioning, a Virtual Private Cloud (VPC) with a subnet and Internet Gateway, and an EC2 instance.

---

## File Structure

```
project-root/
├── s3_bucket.tf         # Configuration for the S3 bucket
├── aws_vpc.tf           # Configuration for the VPC, subnet, and Internet Gateway
├── ec2_instance.tf      # Configuration for the EC2 instance
├── provider.tf          # AWS provider configuration
├── variables.tf         # Variables used across the project
```

---

## How to Run This Project

Follow these steps to deploy the infrastructure using Terraform:

### Prerequisites

- [Terraform installed](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
- AWS CLI configured with valid credentials
- An AWS account with sufficient permissions to create resources

### Steps

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/tungstennn/Terraform-AWS-Infrastructure-Project.git
   cd terraform-aws-project
   ```

2. **Initialize Terraform**:
   Initialize the project and download required providers:
   ```bash
   terraform init
   ```

3. **Set Variable Values**:
   Update the `bucket_name` variable by editing `variables.tf`:
   ```bash
   terraform plan
   ```

4. **Deploy the Infrastructure**:
   Apply the configuration to create the resources:
   ```bash
   terraform apply
   ```

5. **Verify Resources**:
   - Check the AWS Management Console to ensure resources are created successfully
   - Verify the S3 bucket, VPC, and EC2 instance

6. **Clean Up Resources**:
   To destroy the created resources, run:
   ```bash
   terraform destroy
   ```

---

## Future Enhancements

Here are areas where the project can be extended to add complexity and functionality:

1. **Security Enhancements**:
   - Implement IAM roles and policies to manage permissions securely
   - Use S3 bucket policies to restrict access
   
2. **Networking Additions**:
   - Add multiple subnets (public and private) with appropriate route tables
   - Configure NAT Gateways and Network ACLs

3. **Scaling EC2 Instances**:
   - Use Auto Scaling Groups (ASGs) to manage instance scaling
   - Add an Elastic Load Balancer (ELB) to distribute traffic

4. **Monitoring and Logging**:
   - Configure CloudWatch for EC2 instance and VPC metrics
   - Enable S3 access logging

5. **Automation and CI/CD**:
   - Use GitHub Actions or another CI/CD tool to automate Terraform workflows
   - Implement a pipeline for infrastructure provisioning and testing

---

## Notes

- Ensure AWS credentials are not hard-coded in any file. Use environment variables or AWS CLI configuration
- Add sensitive files like `terraform.tfstate` and `.terraform/` to `.gitignore`
- Follow best practices for IaC to maintain security and scalability

---

## .gitignore File

```gitignore
# Terraform state and backup files
*.tfstate
*.tfstate.backup

# Terraform plugin directory
.terraform/

# Log files
*.log

# AWS credentials and sensitive files
*.env
```

---

Feel free to contribute by forking the repository and submitting a pull request for improvements or additional features.

