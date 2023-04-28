# SPDX-FileCopyrightText: 2023 Mikaela Allan
#
# SPDX-License-Identifier: GPL-3.0-or-later
{
  inputs,
  cell,
}: let
  l = inputs.nixpkgs.lib // builtins;
in
  l.genAttrs [
    "ananke"
    "nexus"
  ] (machineName:
    inputs.hive.load {
      inherit cell inputs;
      src = inputs.self + "/machines/${machineName}/data";
    })
