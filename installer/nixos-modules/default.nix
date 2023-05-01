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
    # This is only here because hive adds it by default when the config
    # references home-manager whilst this configuration is built outside hive
    inputs.home-manager.nixosModules.home-manager

    inputs.cells.common.nixosModules.default

    ({
      config,
      lib,
      ...
    }: let
      updateMicrocode = lib.mkOverride 900 config.hardware.enableRedistributableFirmware;
    in {
      hardware.cpu = {
        amd = {inherit updateMicrocode;};
        intel = {inherit updateMicrocode;};
      };
    })

    ({lib, ...}: {
      services.openssh.settings.PermitRootLogin = lib.mkForce "prohibit-password";
    })
  ];

  environment.systemPackages = with inputs.cells.common.packages.default.pkgs; [
    efibootmgr
    efivar

    cryptsetup
    lvm2
    tpm2-tools

    gptfdisk
    dosfstools
    e2fsprogs
    f2fs-tools
    btrfs-progs
    xfsprogs
  ];

  hardware.enableRedistributableFirmware = true;

  security.sudo.wheelNeedsPassword = false;

  services = {
    avahi = {
      enable = true;

      nssmdns = true;

      publish = {
        addresses = true;
        enable = true;
      };
    };

    lvm = {
      enable = true;
      dmeventd.enable = true;
    };

    openssh = {
      enable = true;
      settings.PasswordAuthentication = false;
    };
  };
}
