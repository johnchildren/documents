{ stdenv, pandoc, texlive }:

stdenv.mkDerivation {
  name = "cv";
  src = ./.;

  buildInputs = [
    texlive
    pandoc
  ];

  buildPhase = ''
    pandoc -s -o cv.pdf cv.md
  '';

  installPhase = ''
    mkdir -p $out
    cp cv.pdf $out
  '';
}
