{ nixpkgs ? import <nixpkgs> {} }:
let
  inherit (nixpkgs) pkgs;
  stdenv = pkgs.stdenv;
  texlive = pkgs.texlive.combine {
    inherit (pkgs.texlive) scheme-small;
  };
  pandoc = pkgs.pandoc;
in {
  cv = import ./cv { inherit stdenv pandoc texlive; };
}
