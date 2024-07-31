# Example Docker Setup for Composable Frontends

This is an example how to use a NUXT Application with Docker and PNPM as package manager.
The frontend is a [demo-store](https://frontends.shopware.com/getting-started/templates/demo-store-template.html) from [Composable Frontends](https://frontends.shopware.com/). We recommend using devenv and run
Composable Frontends locally. The good thing here is you could add also Shopware as a container
and run the whole stack with one docker-compose file.

## What is inside?
A docker compose setup with two containers, one for the frontend and one nginx as a reverse proxy.
The frontend is running in a development mode, so you can change the code and see the changes immediately.

## How to set up?
1. Clone the repository
2. Run `sh setup.sh`
3. Open your browser and go to `http://127.0.0.1/`
4. Refresh your Browser now you should see the Demo-Store from Composable Frontends

## How to run after set up?
Just `docker-compose up` (in foreground) or `docker-compose up -d` (in background)

## How to stop after set up?
Just `docker-compose stop` 

## Trouble Shooting

### How to access the frontend container?
Make sure the container is running and then you can access it with:  
`docker exec -it demo_store /bin/bash`

### I added a new package, but it is not used in the container?
If you added the package outside (on you local machine) the container you have to rebuild the container.

### You see the following error in console: `nitro  ERROR  [nitro] [uncaughtException] listen EADDRINUSE: address already in use /tmp/nitro/worker-65-1.sock`?
Check the [Issue (worker: listen EADDRINUSE: address already in use)](https://github.com/unjs/nitro/issues/885) for more details.