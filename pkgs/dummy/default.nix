{ lib, stdenv }:

stdenv.mkDerivation rec {
  name = "dummy-${version}";
  version = "1.0.0";

  src = ./.;

  buildPhase = "echo echo dummy > dummy";
  installPhase = "install -Dm755 dummy $out";

  meta = with lib; {
    description = "";
    homepage = "";
    license = licenses.mit;
    maintainers = with maintainers; [ tboerger ];
    platforms = platforms.unix;
  };
}
