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
  description = "Remote Nix Builder";
  group = "rnixbld";
  isSystemUser = true;
  openssh.authorizedKeys.keys =
    l.concatMap
    (l.flip l.getAttr inputs.cells.common.data.users.authorizedKeys)
    (inputs.cells.auth.data.admin.users ++ ["root@ananke"]);
  shell = "/run/current-system/sw/bin/sh";
  uid = 29950;
}
