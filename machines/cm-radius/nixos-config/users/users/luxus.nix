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
  description = "Luxus";
  extraGroups = ["wheel"];
  #  hashedPassword = inputs.cells.auth.data.hashedPasswords.luxus;
  home = machineData.users.luxus.homeDirectory;
  isNormalUser = true;
  #openssh.authorizedKeys.keys = inputs.cells.common.data.users.authorizedKeys.luxus;
  uid = 1000;
  openssh.authorizedKeys.keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAID/AjBtg8D4lMoBkp2L3dDb5EmkOGr1v/Ns1wwRoKds4 luxus"
  ];
}
