with import <nixpkgs>{}; 
#{ stdenv, fetchurl, perl }: 1

stdenv.mkDerivation {
  name = "stl-to-dxf-convert";
  installPhase = ''
    mkdir -p $out/bin
    cp stl-to-dxf-convert.sh convert.scad $out/bin/
  '';
  buildInputs = [
    pkgs.openscad
  ];
  src = ./.;
}
