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

    inputs.lanzaboote.nixosModules.lanzaboote

    ({lib, ...}: {
      swapDevices = [
        {
          device = "/dev/disk/by-partlabel/andromeda-crypt1-partition";
          deviceName = lib.mkForce "crypt1";

          discardPolicy = "both";

          randomEncryption = {
            enable = true;

            cipher = "aes-xts-plain64";
            keySize = 512;

            allowDiscards = true;
            sectorSize = 4096;
          };
        }
      ];
    })
  ];

  home-manager.users.em = builtins.removeAttrs cell.homeConfigurations."em@andromeda" ["bee"];

  system.stateVersion = "23.05";
}
