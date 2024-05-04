# SKAP API service
This application is intended for MCGIPRO use only.
All features on this application is intended to run SKAP game mechanics only.

## How to setup development environment
At this point, we assume that you have already installed docker in your machine.
If not, please visit [docker](https://docs.docker.com/engine/install/) and follow the installation instruction for you machine.

### Run the code below to setup your local dev environment
```
docker compose -f docker-compose.dev.yml up --build -d

# create your database
docker compose -f docker-compose.dev.yml exec api rake db:create

# run the migration
docker compose -f docker-compose.dev.yml exec api rake db:migrate
```
