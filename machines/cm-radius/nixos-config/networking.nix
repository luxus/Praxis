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
  useDHCP = false;
  hostName = "cm-radius"; # Define your hostname.
  domain = "luxus.local"; # Define your domain name.
  #   search = [ "luxus.local" ];
  interfaces.ens160.ipv4.addresses = [
    {
      address = "10.22.55.98";
      prefixLength = 24;
    }
  ];
  defaultGateway = "10.22.55.1";
  nameservers = ["193.169.83.59"];
}
