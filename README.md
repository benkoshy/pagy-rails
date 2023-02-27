# What is this?

This repository contains a basic Rails App to allow you to experiment with pagy.

![alt text](https://github.com/benkoshy/pagy-rails/blob/master/app/assets/images/pagy_example.png)

### Dependencies:

* Rails 6 and Ruby 3.0.1

### How it works:

* When you seed the database, 500 unique records will be created.
* These will be used to paginate.

## How to set up:

### 1. Choose a branch

The different branches show pagy's functionality with different: (i) javascript libraries, and (ii) CSS frameworks. Choose checkout the branch that works for you:

(A) turbo-rails
```sh
git clone --branch turbo-rails git@github.com:benkoshy/pagy-rails.git
```

(B) turbolinks
```sh
git clone --branch turbolinks git@github.com:benkoshy/pagy-rails.git
```

(C) Master - Default Canonical Rails Example - Multiple Stylesheets
```sh
git clone --branch master git@github.com:benkoshy/pagy-rails.git
```

### 2. Install

```sh
rake db:setup

yarn install

./bin/webpack-dev-server

rails s
```

And then navigate to: http://localhost:3000/

### 3. Switching Branches
If you switch branches, don't forget to rerun commands to set everything up again:

```sh
git checkout tailwind_etc

bundle install

yarn install
```

and stop and start the servers again:

```sh
./bin/webpack-dev-server

rails s
```

