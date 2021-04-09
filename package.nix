{ ps-pkgs, ps-pkgs-ns, ... }:
  with ps-pkgs;
  { repo = "https://github.com/ursi/purescript-whatwg-html.git";
    rev = "f787a33c656f58f9b24b8a847a63c6b3cf15bc09";
    dependencies =
      let inherit (ps-pkgs-ns) ursi; in
      [ nullable
        ursi.prelude
        ursi.ffi-options
      ];
  }
