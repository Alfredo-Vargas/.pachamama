# Installation of Angular and Project Creation
## Native creation:
Install angular
```console
npm install -g @angular/cli
```
Creation a new project
```console
ng new <project-name>
```
Add new component (two options)
```console
ng generate component <component-name>
ng g c <component-name>
```
Starting the Web Server (On `http://localhost:4200`):
```console
ng serve
```

## Docker container
Creation of a project on your docker container, see [link](https://hub.docker.com/r/alexsuch/angular-cli):
Git-hub of developer: [Mihai-B](https://github.com/Mihai-B/angular-cli-docker)
```console
docker run -it --rm -w /app -v $(pwd):/app alexsuch/angular-cli:10.2.3 ng new <project-name>
```
Creation of a new component:
```console
docker run -it --rm -w /app -v $(pwd)/<project-name>:/app alexsuch/angular-cli:10.2.3 ng g component <component-name>
```
Running the server 
```console
docker run -it --rm -w /app -v $(pwd)/<project-name>:/app -p 4200:4200 alexsuch/angular-cli:10.2.3 ng serve --host 0.0.0.0
```

## Managing permission between docker container and host
To `tty` into your docker container:
```console
docker exec -it <container-name> /bin/sh
```
Changing the permissions such the `id` and `gid` numbers from the container match the `id` and `gid` of the host user.
