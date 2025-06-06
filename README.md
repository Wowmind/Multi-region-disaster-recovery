# s3 Multi-region-disaster-recovery


### 1. Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- AWS credentials configured (`~/.aws/credentials`)
- Optional: domain (not required — CloudFront URL will be used)


### 2. Initialize Terraform
terraform init

### 3. Apply the Configuration
terraform apply
Confirm the changes when prompted. After completion, Terraform will output the CloudFront URL.

### 4. Upload Your Website Files
aws s3 sync website/ s3://<your-primary-bucket-name>
Replace <your-primary-bucket-name> with the name shown in Terraform output (e.g., my-static-site-us-east-1).

### 5. Access the Website
Copy and paste the CloudFront URL into your browser (output as cloudfront_url) and enjoy your globally delivered static site!


 ### Notes
Replication will begin only after uploading versioned objects to the primary bucket.
CloudFront uses the default AWS certificate (*.cloudfront.net) for HTTPS.
