# project-code

Project Code is a collaborative project to learn and teach Python, DevOps, and agile project best practices by building a url shortner service.

* more information - see [the wiki](https://github.com/rdkr/project-code/wiki)
* project management - see [trello](https://trello.com/b/FC8mke6j/project-code)
* members - see [CODEOWNERS](CODEOWNERS) and [AUTHORS](AUTHORS)


## Hosting
The server will be running Ubuntu 16.04.6 x64 on DigitalOcean's cloud platform. 

### Cloud-init.txt 
Configuration file that runs at server set-up. 
To use this file copy the contents of the file into the 'user data' box when setting up a DigitalOcean instance. 

#### Users
The current configuration sets up three user accounts and allows connection via SSH. Admin users are also provided paswordless sudo access if they have logged in via SSH. Users are also added to the docker group so they do not need to call sudo when running docker commands. 
Root ssh access has been disabled.

#### Packages
- apt-transfer-https: used to install docker via the https repository
- docker-ce: installs the docker-ce version via the official docker repository. The config uses the relevant gpg key to ensure authenticity. Presently, the installation is specific to Ubuntu 16.04 Xenial. 

## Application

## CI/CD
