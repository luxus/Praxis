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
}: {
  _imports = [
    ({lib, ...}: {
      nix.settings.auto-optimise-store = lib.mkOverride 900 true;
    })
  ];

  inherit (cell.data.nix) registry;

  daemonCPUSchedPolicy = "batch";

  extraOptions = ''
    extra-experimental-features = nix-command flakes
  '';

  settings = {
    inherit (cell.data.nix) substituters trusted-public-keys;
  };
}
