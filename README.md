# What is this?

This repository contains a basic Rails App to allow you to experiment with pagy.

![alt text](https://github.com/benkoshy/pagy-rails/blob/master/app/assets/images/pagy_example.png)

### Dependencies:

* Rails 7 and Ruby 3.0.1

### How it works:

* When you seed the database, 500 unique records will be created.
* These will be used to paginate.

## How to set up:

### 1. Choose a branch

The different branches show pagy's functionality with different: (i) javascript libraries, and (ii) CSS frameworks. Choose checkout the branch that works for you:


(A) Master - Default Canonical Rails Example - Multiple Stylesheets
```sh
git clone --branch master https://github.com/benkoshy/pagy-rails.git
```

(B) turbo-rails - No longer supported

```sh
git clone --branch turbo-rails https://github.com/benkoshy/pagy-rails.git
```

(C) turbolinks - No longer supported
```sh
git clone --branch turbolinks https://github.com/benkoshy/pagy-rails.git
```


### 2. Install

```sh
rake db:setup

yarn install

./bin/dev
```

And then navigate to: http://localhost:3000/

### 3. Switching Branches
If you switch branches, don't forget to rerun commands to set everything up again:

```sh
bundle install

yarn install
```

and stop and start the servers again:

```sh
./bin/dev
```

### ES Build

Please have a look at the package.json file to see how we are loading pagy javascript files. If you are not using js. then you don't need to worry about that!

