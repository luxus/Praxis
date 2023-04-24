# SPDX-FileCopyrightText: 2023 Mikaela Allan
#
# SPDX-License-Identifier: GPL-3.0-or-later
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
        inherit (std.blockTypes) devshells nixago;
      in [
        (devshells "shells")
        (nixago "pebbles")
      ];
    }
    {
      devShells = std.harvest inputs.self ["main" "shells"];
    };
}
