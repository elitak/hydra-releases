{ system ? "x86_64-linux"
#, platform ? null
#, config ? {}
#, overlays ? []
, ...
}@args:

let
  pkgs = import <nixpkgs> {inherit system;};
  platform = pkgs.lib.systems.platforms.pogoplug4;
in with import <nixpkgs> { crossSystem = {
  arch = "armv5tel";
  config = "armv5tel-unknown-linux-gnueabi";
  float = "soft";

  inherit platform;

  inherit (platform) gcc;
  libc = "glibc";

  withTLS = true;
  openssl.system = "linux-generic32";
}; };
{ inherit hello; }
