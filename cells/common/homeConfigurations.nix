# SPDX-FileCopyrightText: 2023 Mikaela Allan
#
# SPDX-License-Identifier: GPL-3.0-or-later
{
  inputs,
  cell,
}: let
  inherit (inputs) haumea;
  l = inputs.nixpkgs.lib // builtins;
in
  l.genAttrs ["em"] (homeName:
    inputs.hive.load {
      inherit cell inputs;
      src = inputs.self + "/common/home-configs/${homeName}";
    })
