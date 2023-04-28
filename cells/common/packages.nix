# SPDX-FileCopyrightText: 2023 Mikaela Allan
#
# SPDX-License-Identifier: GPL-3.0-or-later
{
  inputs,
  cell,
}: {
  default = inputs.cells.core.packages.default.extend cell.overlays.default;
}
