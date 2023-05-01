# SPDX-FileCopyrightText: 2023 Mikaela Allan
#
# SPDX-License-Identifier: GPL-3.0-or-later
{
  inputs,
  cell,
}: {
  nixos-installer-iso = inputs.hive.load {
    inherit cell inputs;
    src = inputs.self + "/installer/nixos-modules";
  };
}
