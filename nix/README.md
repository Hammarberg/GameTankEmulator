# GameTankEmulator Nix/NixOS support

This folder contains build support for Nix and NixOS.

For a quick development shell with GameTankEmulator build dependencies:

```sh
$ nix-shell [path to shell.nix]
```

To have GameTankEmulator built and installed on your system, add the following to environment.systemPackages in configuration.nix or your home manager.

```
(import /<path to>/GameTankEmulator/nix/default.nix { inherit pkgs; })
```
