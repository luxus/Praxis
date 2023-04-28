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
  _imports = [
    {
      programs.nixvim = inputs.cells.common.nixvimConfigurations.em;
    }
  ];

  bash.enable = true;

  direnv = {
    enable = true;
    nix-direnv.enable = true;
  };

  git = {
    enable = true;
    extraConfig = {
      "credential \"https://dev.azure.com\"".useHttpPath = true;
      init.defaultBranch = "master";
    };
    userName = "Mikaela Allan";
    userEmail = "me@mikaela.ca";
  };

  nixvim.enable = true;

  starship = {
    enable = true;
    enableBashIntegration = true;
    enableZshIntegration = true;
  };

  ssh = {
    enable = true;
    compression = true;
    controlMaster = "auto";
    controlPath = "~/.ssh/control-%C";
    controlPersist = "5s";

    matchBlocks = let
      vmwareMachineConfig = {
        compression = false;
        forwardAgent = true;
        forwardX11Trusted = true;
        user = "em";
      };
    in {
      "nexus.local" = vmwareMachineConfig;
      "vinculum.local" = vmwareMachineConfig;
    };
  };

  tmux = {
    enable = true;
    keyMode = "vi";
    shortcut = "a";
  };

  zsh = {
    defaultKeymap = "viins";
    enable = true;
    enableCompletion = true;
    enableSyntaxHighlighting = true;
    history = {
      expireDuplicatesFirst = true;
      extended = true;
    };
  };
}
