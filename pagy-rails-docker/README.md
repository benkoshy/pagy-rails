# Pagy Rails Docker

This dir contains a few files to setup a ruby development environment without installing anything on your system.

### Build

You have a couple of alternatives:

1. (recommended) Permanently set a few environment variables about your user in your IDE or system (it will be easier for the future):
   - the `GROUP` name (get it with `id -gn` in the terminal)
   - if `echo $UID` returns nothing, then set the `UID` (get it with `id -u` in the terminal)
   - if `echo $GID` returns nothing, then set the `GID` (get it with `id -g` in the terminal)

  (Note: you can also specify a few other variables used in the `docker-compose.yml` file. If you cannot set your UID from your terminal window, then you can hard-code it in your `docker-compose.yml` file or alternatively, you can set it to `UID = 1000` (or whatever UID you choose) in a `.env` file directly in `pagy-rails-docker` folder - this will set a default UID).

  ```sh
  cd pagy-rails-docker
  ```

2. Just set them with the command (you will have to set them each time you will have to build or do other stuff) For example:

```sh
cd pagy-rails-docker
GROUP=$(id -gn) UID=$(id -u) GID=$(id -g) docker-compose build pagy-rails
```

You need to run this only once usually, when you build the images. After that you just run the containers (see below).

### Run

Run the containers from the `pagy-on-docker` dir:

```sh
cd pagy-rails-docker
docker-compose run --rm pagy-rails bundle install
docker-compose run --rm pagy-rails yarn install
docker-compose up pagy-rails
```

The `webpack-dev-server` and the rails server will start, click on: http://localhost:3000/?page=1&items=20 and you're off to the races!

To open a terminal in the `pagy-rails` container:

```sh
docker-compose exec pagy-rails bash
```
