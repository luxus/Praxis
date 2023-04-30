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
    inputs.cells.common.darwinModules.default
  ];

  networking = {
    computerName = "Mikaela’s MacBook Pro";
    hostName = "ananke";
  };

  services.nix-daemon.enable = true;

  system.stateVersion = 4;
}
