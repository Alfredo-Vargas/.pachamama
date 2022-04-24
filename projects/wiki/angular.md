# Installation of Angular and Project Creation
## Data Binding:
1. Interpolation. - Inside the same component {{}}
2. Zero-way. -  
3. Two-way data-binding, Banana in the Box: e.g. `[(ngModel)]` = `boolean`
4. Property binding uses square brackets `[]`: e.g. `[user] = givenUser`. `user` is in the child component and `givenUser` is in the parent Component.
5. Event binding uses parenthesis `()`: e.g. `(createUserEvent) = "onCreateUserEvent($event)"`

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
Add new pipe (two options)
```console
ng generate pipe <pipe-name>
ng g p <pipe-name>
```
Starting the Web Server (On `http://localhost:4200`):
```console
ng serve
```
Installing bootstrap in angular
```console
npm install bootstrap jquery popper.js --save
```
To install a fresh pull project (inside the directory)
```
npm install
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
