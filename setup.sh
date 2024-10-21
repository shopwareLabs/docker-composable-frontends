#!/bin/bash

# This script is used to setup the environment for the project.
mkdir -p src && cd src

# check if package.json exists and create repo only when it does not exist
if [ ! -f package.json ]; then
    npx tiged shopware/frontends/templates/vue-demo-store --force
fi

cd ../

docker compose up --build -d --remove-orphans
docker compose stop
docker compose up -d