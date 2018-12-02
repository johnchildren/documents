{ nixpkgs ? import ./nix/nixpkgs-pinned {} }:
with nixpkgs;
let
  custom_texlive = texlive.combine {
    inherit (texlive)
    scheme-small
    enumitem
    geometry
    fancyhdr
    xcolor
    ifxetex
    xifthen
    etoolbox
    setspace
    fontspec
    unicode-math
    fontawesome
    sourcesanspro
    tcolorbox
    parskip
    hyperref
    environ
    trimspaces
    
    ifmtarg;
  };
in rec {
  awesome-cv = callPackage ./nix/awesome-cv.nix { texlive = custom_texlive; };
  cv = callPackage ./src/cv { texlive = custom_texlive; awesome-cv = awesome-cv; };
}
