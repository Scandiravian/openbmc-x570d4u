{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nix-environments = {
      url = "github:nix-community/nix-environments";
    };
  };

  outputs = {
    self,
    nixpkgs,
    nix-environments,
  }: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    devShells.${system} = {
      default = pkgs.mkShell {
        # Enable experimental features without having to specify the argument
        packages = with pkgs; [
          qemu
        ];
      };
      build = nix-environments.devShells.${system}.yocto;
    };
  };
}
