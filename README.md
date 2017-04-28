phd5-template
=============

Web application template built upon `dmstr/phd5-app`.

## Requirements

- [`docker`](https://docs.docker.com/engine/installation/) >= 1.10
- [`docker-compose`](https://docs.docker.com/compose/install/) >= 1.8.1

## Documentation

[Developer guide](http://phd.dmstr.io/en/docs) | [API docs](http://phd.dmstr.io/docs/api) | [Online help](http://phd.dmstr.io/docs/help)

### Getting started

Activate your **development environment** by creating a config file `.env` for *Docker Compose*.
This setting will load and merge `docker-compose.dev.yml` with the default configuration.

    cp .env-dist .env
    
> :bulb: It is also recommended to create an environment config for the **application** under `src/local.env`, this file can be used later to change
environment settings during development.    

Build your images

    docker-compose build
    
Before starting the stack, we run a one-off command to do the initial setup of the application.     

> :exclamation: There are defaults for setting up an admin user and adding demo-data to the application, you can customize these settings `docker-compose.dev.yml`.
    
    docker-compose run --rm php yii app/setup
    
When the initial setup is complete, you can start the application stack with
        
    docker-compose up -d

You can access the application now in your browser
 
    open http://docker.local:21080

And login with `admin` / `admin1`.    

> :bulb: By default, all pages, actions, routes, etc. including frontend and backend modules are only available after authentication. 

For details about package installation, custom application source-code, code generation, database migrations, testing, content management, deployment ...
Continue with the [quick start tutorial](http://phd.dmstr.io/en/docs/guide/tutorials/quick-start-planck.md).

## Resources

- :octocat: [Source-code on GitHub](https://github.com/dmstr/planck)
- :wolf: [Source-code on git.hrzg.de](https://git.hrzg.de/dmstr/planck)
- :cd: [Base-image phd5](https://github.com/dmstr/phd5-app)
- :green_book: [Documentation](https://github.com/dmstr/docs-phd5/blob/master/README.md)

---

### ![dmstr logo](http://t.phundament.com/dmstr-16-cropped.png) Built with [phd](http://phd.dmstr.io) from [dmstr](http://diemeisterei.de)
