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

(C) Materialize CSS with Turbo - [Materialise is a CSS Framework](https://materializecss.com/)
```sh
git clone --branch materialize git@github.com:benkoshy/pagy-rails.git
```

(D) Semantic UI with Turbo - [Semantic UI is a CSS Framework](https://semantic-ui.com/)
```sh
git clone --branch semantic-ui git@github.com:benkoshy/pagy-rails.git
```

(E) UIkit with Turbo - [UIkit is a CSS Framework](https://getuikit.com) 
```sh
git clone --branch uikit git@github.com:benkoshy/pagy-rails.git
```

(F) Tailwind with Turbo - [Tailwind is a CSS Framework](https://tailwindcss.com/)
```sh
git clone --branch tailwind git@github.com:benkoshy/pagy-rails.git
```

(G) Calendar - [is an "extra" pagy feature](https://ddnexus.github.io/pagy/extras/calendar)
```sh
git clone --branch calendar git@github.com:benkoshy/pagy-rails.git
```

(H) Bootstrap - [is an "extra" pagy feature](https://ddnexus.github.io/pagy/extras/bootstrap)
```sh
git clone --branch bootstrap git@github.com:benkoshy/pagy-rails.git
```

### 2. Install

Choose between using Docker, or simply running on your system.

(a) If you use docker go [here.](pagy-rails-docker/README.md)

(b) Without docker:

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

