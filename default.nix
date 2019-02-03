{ nixpkgs ? import ./nix/nixpkgs-pinned {} }:
with nixpkgs;
let
  custom_texlive = texlive.combine {
    inherit (texlive)
    scheme-small
    ifetex;
  };
  fontsConf = makeFontsConf {
    fontconfig = pkgs.fontconfig_210;
    fontDirectories = [];
  };
  cv = callPackage ./src/cv { texlive = custom_texlive; fontsConf = fontsConf; };
in buildEnv {
  name = "documents";
  paths = [ cv ];
}
