{ mkYarnPackage }:
mkYarnPackage {
  name = "node-light";
  src = ./.;
  postInstall = ''
    install -D -t $out/share storage.json
  '';

  packageJSON = ./package.json;
  yarnLock = ./yarn.lock;
  yarnNix = ./yarn.nix;
}
