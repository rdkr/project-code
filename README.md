# url-shortener

## Files

#### Cloud-init.txt - v1.1
This is the cloud-init file that configures the server, it creates the main user accounts for the code-owners and provides passwordless sudo access via SSH. The file also edits the sshd_config file to prevent root ssh access.

As we are using DigitalOcean, to use the cloud-init simply select the user-data box in the 'select additional options' section when creating a droplet and copy in the contents of the cloud-init file.

