with import <nixpkgs>{}; 
#{ stdenv, fetchurl, perl }: 1

stdenv.mkDerivation {
  name = "stl-to-dxf-convert";
  installPhase = ''
    mkdir $out
    cp stl-to-dxf-convert.sh $out/
    cp convert.scad $out/
  '';
  buildInputs = [
    pkgs.openscad
  ];
  src = ./.;
}
