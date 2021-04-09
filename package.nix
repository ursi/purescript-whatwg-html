{ ps-pkgs, ps-pkgs-ns, ... }:
  with ps-pkgs;
  { dependencies =
      let inherit (ps-pkgs-ns) ursi; in
      [ nullable
        ursi.prelude
        ursi.ffi-options
      ];
  }
