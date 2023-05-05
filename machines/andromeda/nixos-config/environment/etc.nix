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
  "crypttab".text =
    l.concatLines (
      l.map
      (cn: "${cn} /dev/disk/by-partlabel/andromeda-${cn}-partition - discard")
      [
        "crypt2"
        "crypt3"
      ]
    )
    + l.concatLines (
      l.map
      (cn: "${cn} /dev/disk/by-partlabel/andromeda-${cn}-partition -")
      [
        "crypt4"
        "crypt5"
        "crypt6"
        "crypt7"
      ]
    );
}
