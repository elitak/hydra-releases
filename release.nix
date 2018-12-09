{ pkgs ? import <nixpkgs> { system = "aarch64-linux"; }
}:
let
in {
  hello = pkgs.hello;
}
