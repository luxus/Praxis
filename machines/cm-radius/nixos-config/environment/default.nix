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
      environment.systemPackages = with pkgs; [
        git
        comma
        neovim
        vim
        gnumake
        openssl
        ripgrep
        fd
        bat
        fzf
        jq
        htop
        neofetch
        tig
        tree
        ncdu
        nmap
        bind
        httpie
        curl
        wget
      ];
    })
  ];
}
