# Pin npm packages by running ./bin/importmap

pin "application", preload: true


pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"

pin_all_from File.expand_path("../app/assets/javascripts", __dir__)

# pin 'pagy-module', to: File.join(Pagy.root, "/javascripts/pagy-module.js"), preload: true
pin 'pagy-module', to: Pagy.root.join("/javascripts/pagy-module.js"), preload: true
