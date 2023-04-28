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
  home = inputs.home-manager;
  pkgs = inputs.cells.common.packages.default;
  system = inputs.flake-utils.lib.system.x86_64-darwin;
}
