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

  fwupd.enable = true;

  lvm.dmeventd.enable = true;

  openssh.enable = true;
}
