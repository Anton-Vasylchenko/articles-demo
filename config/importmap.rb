# Pin npm packages by running ./bin/importmap

pin "application", preload: true

pin "popper", to: 'popper.js', preload: true
pin "bootstrap", to: 'bootstrap.min.js', preload: true
pin_all_from "app/javascript/custom", under: "custom"
pin "@rails/ujs", to: "https://ga.jspm.io/npm:@rails/ujs@7.0.4/lib/assets/compiled/rails-ujs.js"
