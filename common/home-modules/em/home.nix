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
  ...
}: {
  packages = with inputs.cells.common.packages.default; [
    curl
    diffutils
    findutils
    gawk
    gnutar
    htop
    ipcalc
    jq
    lftp
    pwgen
    tree
    wget
    yq
  ];

  sessionVariables = {
    EDITOR = "nvim";
  };
}
