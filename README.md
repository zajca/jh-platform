# JH Platform

## Dependencies

* Docker
* Docker compose

### Run

*port 8080-8083 will be used*

**First run**
```
bash init.sh
```

**Other**
```
bash run.sh
```

#### Platform

Nuxt.js frontend will be available on port *8080*
Adminer on port *8081*
Backend api on port *8082*
Central auth api on port *8083*

*nuxt js is runnig outside from nginx on own web server. Other services are running from nginx container and communication between them must go to nginx `only communication should be from api to auth api`*

*if nuxt configuration changes container attached to tty must be stopped `CTRL^C` and then run again with `bash ./.scripts/run_front`*

* In php containers is set up zsh so they can be attached using: `docker-compose run {api,auth} zsh`

## TODO
front nuxt application is not part of compose now, because custom cmd is not for some reason called. Also it's more easy to develop front on host with `npm run dev`.
