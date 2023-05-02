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
  sharedModules = [
    inputs.nixvim.homeManagerModules.nixvim

    ({lib, ...}: {
      programs.nixvim.enable = lib.mkOverride 900 true;
    })
  ];
}
