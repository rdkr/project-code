# project-code

Project Code is a collaborative project to learn and teach Python, DevOps, and agile project best practices by building a url shortner service.

* more information - see [the wiki](https://github.com/rdkr/project-code/wiki)
* project management - see [trello](https://trello.com/b/FC8mke6j/project-code)
* members - see [CODEOWNERS](CODEOWNERS) and [AUTHORS](AUTHORS)


## Hosting
### Cloud-init.txt 
This is the cloud-init file that configures the server, it creates the main user accounts for the code-owners and provides passwordless sudo access via SSH. The file also edits the sshd_config file to prevent root ssh access.
As we are using DigitalOcean, to use the cloud-init simply select the user-data box in the 'select additional options' section when creating a droplet and copy in the contents of th


## Application
### main.py
This starts flask and currently returns `hello, world`.

### Makefile
A Makefile is a collection of rules. Each rule is a recipe to do a specific thing. In this instance when you type `make run` the flask server runs.

### requirements.txt
Contains a list of items to be installed using pip install. Run "pip install -r requirements.txt" to install the required packages. 

## CI/CD








