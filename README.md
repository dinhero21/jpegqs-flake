# jpegqs-flake

[Nix](https://nixos.org/) [Flake](https://nix.dev/concepts/flakes) for [jpegqs](https://github.com/ilyakurdyukov/jpeg-quantsmooth).

## Installation

### NixOS (Flake)

Add this repo as flake input:

```nix
# flake.nix
{
  inputs.jpegqs.url = "github:dinhero21/jpegqs-flake";
}
```

And use it in a NixOS module:

```
# configuration.nix
{ pkgs, inputs }:

{
  environment.systemPackages = [
    inputs.jpegqs.packages.${pkgs.system}.default
  ];
}
```

