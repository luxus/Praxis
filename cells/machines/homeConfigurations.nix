# SPDX-FileCopyrightText: 2023 Mikaela Allan
#
# SPDX-License-Identifier: GPL-3.0-or-later
{
  inputs,
  cell,
}: let
  l = inputs.nixpkgs.lib // builtins;
in
  l.listToAttrs
  (l.map
    (mu:
      l.nameValuePair
      "${mu.userName}@${mu.machineName}"
      (
        inputs.hive.load {
          inherit cell;

          inputs =
            inputs
            // {
              machineData = builtins.getAttr mu.machineName cell.data;
            };

          src = inputs.self + "/machines/${mu.machineName}/home-configs/${mu.userName}";
        }
      ))
    [
      {
        machineName = "ananke";
        userName = "em";
      }
      {
        machineName = "andromeda";
        userName = "em";
      }
      {
        machineName = "nexus";
        userName = "em";
      }
    ])
