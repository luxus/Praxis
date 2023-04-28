# SPDX-FileCopyrightText: 2023 Mikaela Allan
#
# SPDX-License-Identifier: GPL-3.0-or-later
{
  # Haumea Arguments
  self,
  super,
  root,
  # Hive/Std/Paisano Arguments
  inputs,
  cell,
  # Additional arguments added by machine cell laoder
  machineData,
  ...
}: {
  imports = [
    inputs.nixvim.nixDarwinModules.nixvim

    {
      programs.nixvim = inputs.cells.common.nixvimConfigurations.base;
    }
  ];

  home-manager = {
    sharedModules = [
      inputs.nixvim.homeManagerModules.nixvim
    ];

    users.em = builtins.removeAttrs cell.homeConfigurations."em@ananke" ["bee"];
  };

  networking = {
    computerName = "Mikaela’s MacBook Pro";
    hostName = "ananke";
  };

  programs = {
    nixvim.enable = true;
    zsh.enable = true;
  };

  services.nix-daemon.enable = true;

  system.stateVersion = 4;
}
