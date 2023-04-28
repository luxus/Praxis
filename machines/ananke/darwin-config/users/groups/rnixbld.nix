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
}: let
  l = inputs.nixpkgs.lib // builtins;
in {
  description = "Role account for remote nix builder access";
  gid = 29950;
  name = "rnixbld";
}
