{}:
with import <nixpkgs> {};
let
  inherit (haskellPackages) cabal cabalInstall snap;
in cabal.mkDerivation (self: {
  pname = "snaplet-cors";
  version = "1.0.0";
  src = ./.;
  buildDepends = [ snap ];
  buildTools = [ cabalInstall ];
})
