# SPDX-FileCopyrightText: 2023 Mikaela Allan
#
# SPDX-License-Identifier: GPL-3.0-or-later
{
  inputs,
  cell,
}: {
  default = final: prev: {
    mklcaPraxis = final.lib.makeExtensible (praxis: {
      sourceInfo = inputs.self;
    });
  };
}
