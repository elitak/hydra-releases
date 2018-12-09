{ system ? null
, platform ? null
, config ? {}
, crossSystem ? {}
, overlays ? []
, ...
}@args:
with import <nixpkgs> args;
{ inherit hello; }
