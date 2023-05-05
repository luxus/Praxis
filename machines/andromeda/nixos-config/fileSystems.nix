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
}: let
  btrfsOptions = [
    "defaults"
    "discard"
    "noatime"
  ];

  btrfsSubvolOptions = subvol: btrfsOptions ++ ["subvol=${subvol}"];
in {
  _imports = [
    ({config, ...}: {
      assertions = [
      ];

      fileSystems = let
        efiSysMountPoint = config.boot.loader.efi.efiSysMountPoint;
      in {
        "${efiSysMountPoint}" = {
          device = "/dev/disk/by-partlabel/andromeda-efi-partition";
          fsType = "vfat";
          options = [
            "codepage=437"
            "discard"
            "dmask=0022"
            "errors=remount-ro"
            "fmask=0133"
            "iocharset=iso8859-1"
            "noatime"
            "shortname=mixed"
          ];
        };
      };
    })
  ];

  "/" = {
    device = "none";
    fsType = "tmpfs";
    options = [
      "defaults"
      "size=2G"
      "mode=755"
      "strictatime"
    ];
  };

  "/etc/cryptsetup-keys.d" = {
    device = "/dev/mapper/main-persist";
    fsType = "btrfs";
    neededForBoot = true;
    options = btrfsSubvolOptions "/keys/luks";
  };

  "/home" = {
    device = "/dev/mapper/auxlocal-home";
    fsType = "btrfs";
    options = btrfsOptions;
  };

  "/nix" = {
    device = "/dev/mapper/main-nixstore";
    fsType = "xfs";
    options = [
      "defaults"
      "discard"
      "noatime"
    ];
  };

  "/persist" = {
    device = "/dev/mapper/main-persist";
    fsType = "btrfs";
    neededForBoot = true;
    options = btrfsSubvolOptions "/";
  };

  "/var/log" = {
    device = "/dev/mapper/main-persist";
    fsType = "btrfs";
    neededForBoot = true;
    options = btrfsSubvolOptions "/logs";
  };
}
