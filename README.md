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

`ssh (USERNAME)@(IP ADDRESS)` to access the server where (USERNAME) is replaced by your username and (IP ADDRESS) is replaced by the IPV4 address of the created droplet. it should look something like `ssh jon@142.93.37.197`

#### Packages
- apt-transfer-https: used to install docker via the https repository.
- docker-ce: installs the docker-ce version via the official docker repository. The config uses the relevant gpg key to ensure authenticity. Presently, the installation is specific to Ubuntu 16.04 Xenial. 

#### Nginx
See this [link](https://www.digitalocean.com/community/tutorials/how-to-run-nginx-in-a-docker-container-on-ubuntu-14-04) for how Nginx was set up.

The following has been added to the Cloud-init.txt file
"runcmd:
    - "docker run --name docker-nginx -p 80:80 -d nginx"

* "runcmd:" runs the specified command in the cloud-innit.txt script
* "docker" is the containerisation software. Docker maintains a site called Dockerhub, a public repository of Docker files (including both official and user-submitted images). The image downloaded in the above command is the official Nginx one, which saves us from having to build our own image.
* "run" is the command to create a new container
* The "--name" flag is how we specify the name of the container (if left blank one is automatically assigned but this may make organisation of containers more difficult)
* "-p" specifies the port we are exposing in the format of -p local-machine-port:internal-container-port. In this case we are mapping Port 80 in the container to Port 80 on the server.
* "nginx" is the name of the image on dockerhub, Docker will download the image automatically if it is missing.
* The "-d" flag allows us to run this container in the background, which is what we want for a website.

Type `docker ps -a` to view any current containers, currently that should be limited to nginx.
Type `docker stop docker-nginx` to stop the container.
Type `docker start docker-nginx` to start the container.
Type `docker rm docker-nginx` to remove the container (WARNING THIS WILL DELETE IT).


## Application

### main.py
This starts flask and currently returns `hello, world`.

### Makefile
A Makefile is a collection of rules. Each rule is a recipe to do a specific thing. In this instance when you type `make run` the flask server runs.

### requirements.txt
Contains a list of items to be installed using pip install. Run "pip install -r requirements.txt" to install the required packages or type `make install`.  

## CI/CD
