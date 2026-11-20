{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation {
	pname = "GameTankEmulator";
	version = "0.1";

	src = ../.;

	nativeBuildInputs = with pkgs; [
		pkg-config
		SDL2
		libx11
		git
	];

	buildPhase = ''
		make bin
	'';

	installPhase = ''
		make install INSTALL_DIR=$out
	'';
}
