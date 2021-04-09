{ ps-pkgs, ps-pkgs-ns, ... }:
  with ps-pkgs;
  { version = "0.3.0";
    repo = "https://github.com/ursi/purescript-whatwg-html.git";
    rev = "";
    dependencies =
      let inherit (ps-pkgs-ns) ursi; in
      [ nullable
        ursi.prelude
        ursi.ffi-options
      ];
  }
