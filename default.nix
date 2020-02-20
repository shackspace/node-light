{ yarn2nix-moretea }:
yarn2nix-moretea.mkYarnPackage {
  name = "node-light";
  src = ./.;
  postInstall = ''
    install -D -t $out/share $src/storage.json
  '';

  packageJSON = ./package.json;
  yarnLock = ./yarn.lock;
  yarnNix = ./yarn.nix;
}
