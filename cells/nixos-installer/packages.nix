# SPDX-FileCopyrightText: 2023 Mikaela Allan
#
# SPDX-License-Identifier: GPL-3.0-or-later
{
  inputs,
  cell,
}: {
  nixos-x86_64-installer-iso = inputs.nixos-generators.nixosGenerate {
    pkgs = inputs.cells.common.packages.default;
    format = "install-iso";
    system = "x86_64-linux";
    modules = [
      cell.nixosModules.nixos-installer-iso
    ];
  };
}
