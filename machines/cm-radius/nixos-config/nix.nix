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
  settings = {
    auto-optimise-store = true;
    experimental-features = ["flakes" "nix-command" "repl-flake"];
    keep-outputs = true;
    log-lines = 50;
    substituters = [
      "https://nix-community.cachix.org"
      "https://microvm.cachix.org"
    ];
    trusted-public-keys = [
      "microvm.cachix.org-1:oXnBc6hRE3eX5rSYdRyMYXnfzcCxC7yKPTbZXALsqys="
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
    ];
    trusted-users = [
      "@wheel"
      "root"
    ];
  };
}
