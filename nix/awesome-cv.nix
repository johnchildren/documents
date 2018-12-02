{ stdenv, fetchFromGitHub, texlive }:

stdenv.mkDerivation rec {
  version = "2018-09-17";
  name = "awesome-cv-${version}";

  src = fetchFromGitHub {
    owner = "posquit0";
    repo = "Awesome-CV";
    rev = "7c3fbce42ffbb35a0770398322c347cf9c759859";
    sha256 = "1dinrnbq5psh5l7phqvlh9c1x5mdl32c65gq99hx8fvnzr7gfjr6";
  };

  buildInputs = [ texlive ];

  installPhase = ''
    mkdir -p $out
    cp awesome-cv.cls $out/awesome-cv.cls
  '';
}
