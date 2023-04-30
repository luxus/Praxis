# SPDX-FileCopyrightText: 2023 Mikaela Allan
#
# SPDX-License-Identifier: GPL-3.0-or-later
{
  inputs,
  cell,
}: {
  default = inputs.hive.load {
    inherit cell inputs;
    src = inputs.self + "/common/nixos-modules";
  };
}
