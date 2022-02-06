{ ps-pkgs, ps-pkgs-ns, ... }:
  { dependencies =
      with ps-pkgs;
      let inherit (ps-pkgs-ns) ursi; in
      [ nullable
        web-dom
        web-events
        web-html
        web-storage
        web-uievents
        ursi.prelude
        ursi.ffi-options
      ];
  }
