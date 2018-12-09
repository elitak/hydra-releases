{ ... }@args:
let
  pkgs = import <nixpkgs> args;
in
{ hello = pkgs.hello; }
