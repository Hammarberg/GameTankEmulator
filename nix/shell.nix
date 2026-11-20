{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
	nativeBuildInputs = with pkgs; [
		pkg-config
		SDL2
		libx11
		git
		zip
		emscripten
	];

	packages = with pkgs; [
	];
}
