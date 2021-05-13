# What is this?

This repository contains a basic Rails App to allow you to experiment with pagy.

![alt text](https://github.com/benkoshy/pagy-rails/blob/master/app/assets/images/pagy_example.png)

### Key features:

* [turbolinks branch](https://github.com/benkoshy/pagy-rails/tree/turbo-rails) (a deprecated library)
* [turbo-rails branch](https://github.com/benkoshy/pagy-rails/tree/turbolinks) (uses turbo-rails)
* [Materialize with Turbo branch](https://github.com/benkoshy/pagy-rails/tree/materialize). [Materialize](https://materializecss.com) is a CSS framework.
* [Semantic UI with Turbo branch](https://github.com/benkoshy/pagy-rails/tree/semantic-ui). [Semantic UI](https://semantic-ui.com) is a CSS framework.
* [UIkit with Turbo branch](https://github.com/benkoshy/pagy-rails/tree/uikit). [UIkit](https://getuikit.com) is a CSS framework.
* Rails 6 and Ruby 3.0.1

### How to use

* When you seed the database, 500 unique records will be created.
* These will be used to paginate.

### How to set up

Choose between a branch

(A) turbo-rails
```sh
git clone --branch turbo-rails git@github.com:benkoshy/pagy-rails.git
```

(B) turbolinks
```sh
git clone --branch turbolinks git@github.com:benkoshy/pagy-rails.git
```

(C) Materialize CSS
```sh
git clone --branch materialize git@github.com:benkoshy/pagy-rails.git
```

(D) Semantic UI
```sh
git clone --branch semantic-ui git@github.com:benkoshy/pagy-rails.git
```

(D) UIkit
```sh
git clone --branch uikit git@github.com:benkoshy/pagy-rails.git
```

Then if you use docker go [here.](pagy-rails-docker/README.md)

Without docker:

```sh
rake db:setup

yarn install

./bin/webpack-dev-server

rails s
```
