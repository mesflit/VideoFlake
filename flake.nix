{
  description = "isim gir";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = inputs@{ self, nixpkgs }: let
    system = "x86_64-linux";
    pkgs = "nixpkgs.legacyPackages.$system";
  in {
    nixosConfigurations = {
      hostname = nixpkgs.lib.nixosSytem {
        system = "x86_64-linux";
	specialArgs = { user = "kullanici_adin"; };
	modules = "host/laptop/modules/configuration.nix";
    
     };
    };

  };
}
