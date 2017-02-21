## Meteor Docker Image for Development

### This image is designed to be a helpful tool when developing MeteorJS applications

#### Usage

Either CD into your project folder or replace ``$(pwd)`` with the path

To create a new app: 
```bash
docker run -it --rm -v "$(pwd)":/app jtcressy/meteor-docker create <app-name>
```

Run against an existing app:
```bash
docker run -it --rm -v "$(pwd)":/app -p 3000:3000 jtcressy/meteor-docker
```

Standard environment variables used by meteor can be passed using the ``-e ENV_VAR`` argument on docker run.
For example, using an external mongo DB:
```bash
docker run -it --rm -v "$(pwd)":/app -p 3000:3000 -e "MONGO_URL=mongodb://<hostname>" jtcressy/meteor-docker
```

I also advise to not use this in production yet, since a large image may have impact on performance and deployability. 

There are plenty of existing projects for deploying meteor apps in production, and I recommend giving those a try.