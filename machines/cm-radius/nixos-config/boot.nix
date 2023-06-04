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
  _imports = [
    ({pkgs, ...}: {
      boot.kernelPackages = pkgs.linuxPackages_6_3;
    })
  ];
  tmp.cleanOnBoot = true;
  initrd.availableKernelModules = ["ata_piix" "mptspi" "uhci_hcd" "ehci_pci" "ahci" "sd_mod" "sr_mod"];
  initrd.kernelModules = [];
  kernelModules = [];
  extraModulePackages = [];
  loader.grub.enable = true;
  loader.grub.device = "/dev/sda";
  loader.grub.useOSProber = true;
}
