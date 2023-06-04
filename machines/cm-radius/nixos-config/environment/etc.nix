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
}: let
  l = inputs.nixpkgs.lib // builtins;
in {
  "nsswitch.conf".text = ''
    passwd:     files winbind
    shadow:     files winbind
    group:      files winbind

    protocols:  files winbind

    services:   files winbind

    netgroup:   files winbind

    automount:  files winbind
  '';
  /*
              "raddb/mods-enabled/eap".text = ''

      '';
      "raddb/mods-enabled/mschap".text = ''

      '';
      "raddb/clients.conf".text = ''
  client 10.22.55.0/24 {
          secret                = radius
          shortname             = testing
          nastype               = other
          proto                = *
          limit {
                  max_connections = 16
                  lifetime        = 0
                  idle_timeout    = 30
          }

  }
  "raddb/sites-enabled/inner-tunnel".text = ''

      '';
  };
  */
}
