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
  extraOptions = ''
    !include /etc/nix/secrets.conf

    keep-outputs = true
    keep-derivations = true
  '';

  settings = {
    cores = 8;
    max-jobs = 8;

    trusted-users = [
      "@wheel"
      "root"
    ];
  };
}
