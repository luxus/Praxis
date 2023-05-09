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
    ({pkgs, ...}: {
      boot.kernelPackages = pkgs.linuxPackages_6_2;
    })
  ];

  bootspec.enable = true;

  loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  initrd = {
    kernelModules = [
      "nvme"

      "dm_mod"
      "trusted"
      "encrypted_keys"
      "dm_crypt"

      "blake2b_generic"
      "btrfs"

      "xfs"
    ];

    luks.devices.crypt0 = {
      allowDiscards = true;
      device = "/dev/disk/by-partlabel/andromeda-crypt0-partition";
    };
  };

  kernelModules = [
    "kvm_intel"

    "dm_cache"
    "dm_raid"
  ];

  tmp = {
    tmpfsSize = "16G";
    useTmpfs = true;
  };
}
