#!/bin/bash

# Configuration
PROJECT_ID="project-b8is124"
VM_NAME="my-vm-instance"
ZONE="us-central1-a"
MACHINE_TYPE="e2-micro"
IMAGE_FAMILY="ubuntu-2004-lts"
IMAGE_PROJECT="ubuntu-os-cloud"
DISK_SIZE="10GB"

# Set the project
gcloud config set project $PROJECT_ID

# Create the VM
gcloud compute instances create $VM_NAME \
  --zone=$ZONE \
  --machine-type=$MACHINE_TYPE \
  --image-family=$IMAGE_FAMILY \
  --image-project=$IMAGE_PROJECT \
  --boot-disk-size=$DISK_SIZE \
  --tags=http-server \
  --metadata=startup-script='#! /bin/bash
    apt update
    apt install -y apache2
    systemctl enable apache2
    systemctl start apache2
    echo "Hello from $HOSTNAME!" > /var/www/html/index.html'

# Allow HTTP and SSH traffic through the firewall
gcloud compute firewall-rules create allow-http-ssh \
  --allow=tcp:80,tcp:22 \
  --target-tags=http-server \
  --description="Allow HTTP and SSH"

echo "✅ VM deployment complete!"
