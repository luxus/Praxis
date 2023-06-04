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
  "/" = {
    device = "/dev/disk/by-uuid/d076271b-58aa-4c31-b971-767b128ec5d9";
    fsType = "ext4";
  };
}
