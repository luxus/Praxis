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
  ...
}: {
  imports = [
    inputs.impermanence.nixosModules.impermanence
    inputs.nixvim.nixosModules.nixvim

    {
      programs.nixvim = inputs.cells.common.nixvimConfigurations.base;
    }

    ({lib, ...}: {
      boot.loader.efi.efiSysMountPoint = lib.mkOverride 900 "/esp";
    })
  ];

  i18n = {
    defaultLocale = "en_CA.UTF-8";

    extraLocaleSettings = {
      LC_MESSAGES = "en_US.UTF-8";
    };

    supportedLocales = [
      "en_CA.UTF-8/UTF-8"
      "en_US.UTF-8/UTF-8"
    ];
  };

  time.timeZone = "Canada/Eastern";
}
