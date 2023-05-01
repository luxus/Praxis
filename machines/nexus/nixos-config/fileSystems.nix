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
    ({config, ...}: {
      assertions = [
        {
          assertion = config.virtualisation.vmware.guest.enable;
          message = "Storage configuration requires vmware guest services to be enabled.";
        }
      ];

      fileSystems = let
        efiSysMountPoint = config.boot.loader.efi.efiSysMountPoint;
      in {
        "${efiSysMountPoint}" = {
          device = "/dev/disk/by-partlabel/nexus-efi-partition";
          fsType = "vfat";
          options = [
            "codepage=437"
            "dmask=0022"
            "fmask=0133"
            "noatime"
            "iocharset=iso8859-1"
            "shortname=mixed"
            "errors=remount-ro"
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
    ];
  };

  "/tmp" = {
    device = "none";
    fsType = "tmpfs";
    options = [
      "mode=1777"
      "strictatime"
      "rw"
      "nosuid"
      "nodev"
      "size=16G"
    ];
  };
}
