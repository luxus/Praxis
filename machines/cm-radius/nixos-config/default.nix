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
    inputs.cells.common.nixosModules.default


    ({lib, ...}: {
    swapDevices =
    [{ device = "/dev/disk/by-uuid/93130768-e906-43c7-ba01-b14e564ab769"; }];
  )
  ];

  home-manager.users.luxus = builtins.removeAttrs cell.homeConfigurations."luxus@cm-radius" ["bee"];

  system.stateVersion = "23.05";
}
