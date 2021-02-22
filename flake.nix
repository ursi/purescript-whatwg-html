{
  outputs = { self, nixpkgs, utils }:
    utils.simpleShell
      [
        "dhall"
        "nodejs"
        "nodePackages.pulp"
        "nodePackages.bower"
        "purescript"
        "spago"
      ]
      nixpkgs;
}
