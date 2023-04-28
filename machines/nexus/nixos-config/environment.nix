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
  etc."machine-id" = {
    mode = "0444";
    text = ''
      81c8506be5d846ea9f661d5331fef59b
    '';
  };

  persistence."/persist" = {
    hideMounts = true;

    files = [
      "/etc/nix/secrets.conf"

      "/etc/ssh/ssh_host_ed25519_key"
      "/etc/ssh/ssh_host_ed25519_key.pub"
      "/etc/ssh/ssh_host_rsa_key"
      "/etc/ssh/ssh_host_rsa_key.pub"

      "/var/db/dhcpcd/vmen0.lease"
    ];

    users.root = {
      home = "/root";

      directories = [
        {
          directory = ".ssh";
          mode = "0700";
        }
      ];
    };
  };
}
