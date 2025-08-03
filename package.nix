{
  stdenv,
  fetchFromGitHub,
  libjpeg
}:

stdenv.mkDerivation {
  pname = "jpegqs";
  version = "1.20240129";

  src = fetchFromGitHub {
    owner = "ilyakurdyukov";
    repo = "jpeg-quantsmooth";
    rev = "1.20240129";
    sha256 = "sha256-nRjeV+LEGci6JJ/5tCjYT7cubtv7uatw/C2gMmM6l60=";
  };

  buildInputs = [ libjpeg ];

  makeFlags = [ "SIMD=select" ];

  installPhase = ''
    runHook preInstall
    mkdir -p $out/bin
    mv jpegqs $out/bin
    runHook postInstall
  '';

  strictDeps = true;
}
