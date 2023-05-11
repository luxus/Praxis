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
  hostName = "andromeda";

  interfaces = {
    "enp6s0" = {
      useDHCP = false;
      ipv4 = {
        addresses = [
          {
            address = "192.168.255.2";
            prefixLength = 24;
          }
        ];

        routes = [
          {
            address = "0.0.0.0";
            prefixLength = 0;
            via = "192.168.255.1";
          }
        ];
      };
    };
  };

  nameservers = [
    "1.1.1.1"
    "8.8.4.4"
    "8.8.8.8"
  ];

  nftables.enable = true;

  useDHCP = false;
  useNetworkd = true;
}
