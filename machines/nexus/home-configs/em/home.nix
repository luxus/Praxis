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
  inherit (machineData.users.em) homeDirectory;

  packages = with inputs.cells.common.packages.default; [
    ipv6calc
    gnupg
    util-linux
  ];

  stateVersion = "23.05";
  username = "em";
}
