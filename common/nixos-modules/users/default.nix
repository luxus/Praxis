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
  _imports = [
    ({
      lib,
      pkgs,
      ...
    }: {
      users.defaultUserShell = lib.mkOverride 900 pkgs.zsh;
    })
  ];
}
