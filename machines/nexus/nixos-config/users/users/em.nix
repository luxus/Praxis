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
  _imports = [
    ({
      config,
      lib,
      ...
    }:
      lib.mkIf config.networking.networkmanager.enable {
        users.users.em.extraGroups = [
          "networkmanager"
        ];
      })
  ];

  description = "Mikaela Allan";
  extraGroups = ["wheel"];
  hashedPassword = inputs.cells.auth.data.hashedPasswords.em;
  home = machineData.users.em.homeDirectory;
  isNormalUser = true;
  openssh.authorizedKeys.keys = inputs.cells.common.data.users.authorizedKeys.em;
  uid = 1000;
}
