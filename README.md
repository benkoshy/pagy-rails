### What is this?

* Rails demo app 
* Re: how to set up [pagy](https://github.com/ddnexus/pagy).
* Can be used to reproduce bugs.

Please check out other [pagy demo apps](https://github.com/stars/benkoshy/lists/rails-demo-apps-for-pagy) if you want to see samples of how other functionality can be set up.

* Rails: 8.0.0
* Ruby: +3.2.0
* Importmaps
* Propshaft

### Set up Instructions

### Choose your branch

* `master` - for offset pagination.
* `keyset` - for keyset pagination.
* `offset` - for offset based pagination.

Check out the commit history, depending on the branch you choose.

```sh
rake db:migrate db:seed 
```

The following sets up the database, and "seeds" it - i.e. filling it with 1000s records.


```sh
./bin/dev
# starts the rails server
```

Point your browser to: [http://[::1]:3000](http://[::1]:3000) and you should see pagy functioning.

### License

MIT

### Contributing

* If I've made a mistake please feel free to raise an issue. 

* PRs fixing bugs or updating gems etc will be welcomed!


### Infinite Pagination via Keyset

Credit: https://youtu.be/bVvLNpJyZuw



