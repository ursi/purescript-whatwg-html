let devDependencies = [ "console", "exceptions", "psci-support" ]

in  { name = "whatwg-html"
    , dependencies =
        [ "ffi-options", "mason-prelude", "nullable" ] # devDependencies
    , packages = ./packages.dhall
    , sources = [ "src/**/*.purs", "test/**/*.purs" ]
    }
