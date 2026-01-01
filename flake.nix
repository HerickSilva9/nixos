{
  description = "NixOS configuration";

  inputs = {
    # NixOS official package source, using the nixos-unstable branch
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    # Home Manager source
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs: {
    # The host with the name `nixos` will use this configuration
    nixosConfigurations = {


      pc = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./configuration.nix
          ./drivers/nvidia
          ./hosts/pc/hardware-configuration.nix

          home-manager.nixosModules.home-manager
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              users.herick = ./home/home.nix;
              backupFileExtension = "backup";
            };
          }

        ];
      };

      laptop = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./configuration.nix
          ./hosts/laptop/hardware-configuration.nix

          home-manager.nixosModules.home-manager
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              users.herick = ./home/home.nix;
              backupFileExtension = "backup";
            };
          }

        ];
      };

    };
  };

}
