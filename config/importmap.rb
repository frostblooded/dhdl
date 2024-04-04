# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"

pin "js/bootstrap.bundle.min"
pin "js/glightbox.min"
pin "isotope.pkgd.min"
pin "validate"
pin "main"

pin_all_from "app/javascript/controllers", under: "controllers"
