let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.13.8-20200831/packages.dhall sha256:cdb3529cac2cd8dd780f07c80fd907d5faceae7decfcaa11a12037df68812c83

let overrides = {=}

let additions =
      https://raw.githubusercontent.com/ursi/purescript-package-set/dev/packages.dhall sha256:9507077571543a45fcb201a3fc7111758723955272b8b377f663ee76ae78a2d2

in  upstream // overrides // additions
