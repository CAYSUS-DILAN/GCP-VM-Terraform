# GCP-VM-Terraform
Creating a VM in GCP using Terraform
Prerequisites
Google Cloud Account: You need a Google Cloud account with billing enabled.
Google Cloud SDK: Install the Google Cloud SDK on your local machine.
Terraform: Install Terraform on your local machine.

Step 1: Set Up Google Cloud Project
Create a Project: Go to the Google Cloud Console and create a new project.
Enable Billing: Ensure billing is enabled for your project.
Enable APIs: Enable the Compute Engine API for your project.

Step 2: Set Up Terraform
Initialize Terraform: Create a new directory for your Terraform configuration and navigate into it.


mkdir gcp-vm-terraform
cd gcp-vm-terraform
Create a Terraform Configuration File: Create a file named main.tf and add the following configuration:


provider "google" {
  project     = "your-project-id"
  region      = "us-central1"
}

resource "google_compute_instance" "default" {
  name         = "test-vm"
  machine_type = "f1-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}
Replace "your-project-id" with your actual GCP project ID.

rest of the files variables.tf, versions.tf, output.tf, are given above.

Step 3: Initialize and Apply Terraform Configuration
Initialize Terraform: Run the following command to initialize Terraform and download the necessary providers.

terraform init
Apply Terraform Configuration: Run the following command to create the VM in GCP.


terraform apply
Terraform will prompt you to confirm the action. Type yes to proceed.

Step 4: Verify the VM
Check VM in GCP Console: Go to the Google Cloud Console and verify that your VM is running.
SSH into the VM: You can SSH into the VM using the Google Cloud Console or the gcloud command-line tool.

Step 5: Clean Up
To avoid incurring unnecessary charges, you can destroy the resources created by Terraform.

Destroy Terraform Resources: Run the following command to destroy the VM and other resources.


terraform destroy
Terraform will prompt you to confirm the action. Type yes to proceed.
