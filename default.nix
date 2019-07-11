{ mkYarnPackage }:
mkYarnPackage {
  name = "node-light";
  src = ./.;
  packageJSON = ./package.json;
  yarnLock = ./yarn.lock;
  yarnNix = ./yarn.nix;
}
