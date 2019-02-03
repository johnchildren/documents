{ stdenv, pandoc, texlive, fontsConf }:

stdenv.mkDerivation {
  name = "cv";
  src = ./.;

  buildInputs = [
    texlive
    pandoc
  ];

  makeFlags = [ "PREFIX=$(out)" ];

  FONTCONFIG_FILE = fontsConf;
}
