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
  description = "Role account for remote nix builder access";
  gid = 29950; # rnixbld
  isHidden = true;
  name = "rnixbld";
  shell = "/bin/sh";
  uid = 29950;
}
