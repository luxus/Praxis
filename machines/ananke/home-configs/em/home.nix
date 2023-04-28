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
  inherit (machineData.users.em) homeDirectory;

  sessionPath = [
    "$HOME/.local/bin"
  ];

  sessionVariables = {
    VAGRANT_DEFAULT_PROVIDER = "vmware_desktop";
    # PACKER_GITHUB_API_TOKEN = mklca.nixSettings.githubAccessToken;
  };

  sessionVariablesExtra = ''
    eval $(/usr/libexec/path_helper -s)
  '';

  stateVersion = "22.05";

  username = "em";
}
