# What is this?

This repository contains a basic Rails App to allow you to experiment with pagy.

![alt text](https://github.com/benkoshy/test_js_pagy/blob/master/app/assets/images/pagy_example.png)

### Key features:

* [turbolinks branch](https://github.com/benkoshy/test_js_pagy/tree/turbo-rails) (a deprecated library)
* [turbo-rails branch](https://github.com/benkoshy/test_js_pagy/tree/turbolinks) (uses the turbo-rails)
* Rails 6 and Ruby 3.0.0

### How to use

* When you seed the database, 1000 unique records will be created.
* These will be used to paginate.

### How to set up

Choose between: (a) turbo-rails or (b) turbolinks

(A) turbo-rails

```terminal
git clone --branch turbo-rails git@github.com:benkoshy/test_js_pagy.git
```

(B) Turbolinks

```terminal
git clone --branch turbolinks git@github.com:benkoshy/test_js_pagy.git
```

...and then:

```terminal
rake db:setup

yarn install

./bin/webpack-dev-server

rails s
```








