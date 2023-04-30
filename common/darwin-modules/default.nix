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
  imports = [
    inputs.nixvim.nixDarwinModules.nixvim

    {
      programs.nixvim = inputs.cells.common.nixvimConfigurations.base;
    }
  ];
}
