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

    inputs.nixos-hardware.nixosModules.common-cpu-intel
    inputs.nixos-hardware.nixosModules.common-pc

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

  networking = {
    hostName = "andromeda";

    useDHCP = false;

    defaultGateway = {
      address = "192.168.255.1";
      interface = "enp6s0";
    };

    interfaces = {
      "enp6s0" = {
        useDHCP = false;
        ipv4.addresses = [
          {
            address = "192.168.255.2";
            prefixLength = 24;
          }
        ];
      };
    };

    nameservers = [
      "1.1.1.1"
      "8.8.4.4"
      "8.8.8.8"
    ];
  };

  security.sudo.wheelNeedsPassword = false;

  services = {
    avahi = {
      enable = true;

      allowInterfaces = [
        "enp6s0"
      ];

      nssmdns = true;

      publish = {
        addresses = true;
        enable = true;
      };
    };

    lvm.dmeventd.enable = true;

    openssh.enable = true;
  };

  system.stateVersion = "23.05";
}
