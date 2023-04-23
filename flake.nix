{
  description = "Personal configurations and operations";

  inputs = {
    nixpkgs.url = "flake:nixpkgs";
    std = {
      url = "github:divnix/std";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {std, ...} @ inputs:
  std.growOn {
    inherit inputs;
    cellsFrom = ./cells;
    cellBlocks = let
      inherit (std.blockTypes) devshells;
    in [
      (devshells "shells")
    ];
  }
  {
    devShells = std.harvest inputs.self ["main" "shells"];
  };
}
