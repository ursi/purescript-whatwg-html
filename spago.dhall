let dependencies = [ "mason-prelude", "nullable" ]

let devDependencies = [ "console", "exceptions", "psci-support" ]


in  { name = "whatwg-html"
    , dependencies = dependencies # devDependencies
    , packages = ./packages.dhall
    , sources = [ "src/**/*.purs", "test/**/*.purs" ]
    }
