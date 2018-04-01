{ stdenv, pandoc, texlive }:

stdenv.mkDerivation {
  name = "cv";
  src = ./.;

  buildInputs = [
    texlive
    pandoc
  ];

  makeFlags = [ "PREFIX=$(out)" ];
}
