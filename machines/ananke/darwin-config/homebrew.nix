# SPDX-FileCopyrightText: 2023 Mikaela Allan
#
# SPDX-License-Identifier: GPL-3.0-or-later
{
  inputs,
  cell,
  self,
  super,
  root,
  ...
}: {
  enable = true;

  onActivation.cleanup = "uninstall";

  global = {
    brewfile = true;
    lockfiles = false;
  };

  taps = [
    "gromgit/fuse"
    "homebrew/bundle"
    "homebrew/cask"
    "homebrew/cask-drivers"
    "homebrew/cask-fonts"
    "homebrew/cask-versions"
    "homebrew/core"
    "homebrew/portable-ruby"
    "homebrew/services"
    "microsoft/git"
    "osx-cross/arm"
    "osx-cross/avr"
    # "qmk/qmk"
    "sscotth/monoid"
  ];

  brews = [
    "cfssl"
    "gromgit/fuse/tup-mac"
    "ipv6calc"
    "kubernetes-cli"
    "nodejs"
    "python"
    # "qmk/qmk/qmk"
  ];

  casks = [
    "android-platform-tools"
    "bartender"
    "font-caskaydia-cove-nerd-font"
    "font-droid-sans-mono-nerd-font"
    "font-inconsolata-nerd-font"
    "font-jetbrains-mono"
    "font-jetbrains-mono-nerd-font"
    "font-monoid-nerd-font"
    "font-source-code-pro"
    "git-credential-manager-core"
    "gpg-suite"
    "iterm2"
    "karabiner-elements"
    "launchcontrol"
    "macfuse"
    "oracle-jdk"
    "powershell"
    "protonmail-bridge"
    "qmk-toolbox"
    "sublime-merge"
    "sublime-text"
    "tigervnc-viewer"
    "transmission"
    "vlc"
    "wireshark"
  ];
}
