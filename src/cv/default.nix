{ stdenv, pandoc, texlive, awesome-cv, makeFontsConf, font-awesome_4, latinmodern-math, roboto, roboto-mono }:

stdenv.mkDerivation {
  name = "cv";
  src = ./.;

  buildInputs = [
    texlive
    pandoc
    awesome-cv
  ];

  FONTCONFIG_FILE = makeFontsConf {
    fontDirectories = [
      font-awesome_4
      latinmodern-math
      roboto
      roboto-mono
    ];
  };

  makeFlags = [ "PREFIX=$(out)" ];
}
