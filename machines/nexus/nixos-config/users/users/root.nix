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
  openssh.authorizedKeys.keys = l.concatMap (user: inputs.cells.common.data.users.authorizedKeys.${user} or []) inputs.cells.auth.data.admin.users;
}
