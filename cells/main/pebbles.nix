# SPDX-FileCopyrightText: 2023 Mikaela Allan
#
# SPDX-License-Identifier: GPL-3.0-or-later
{
  inputs,
  cell,
}: let
  inherit (inputs) nixpkgs;
  inherit (inputs.std) std lib;

  l = nixpkgs.lib // builtins;
in {
  editorconfig = lib.cfg.editorconfig {
    data."*.nix" = {
      indent_style = "space";
      indent_size = 2;
    };
  };

  lefthook = lib.cfg.lefthook {
    data = {
      pre-commit = {
        parallel = true;
        commands = {
          "check-format" = {
            files = "git diff --name-only HEAD";
            run = "treefmt --fail-on-change -- {files}";
          };
          "check-reuse" = {
            run = "reuse lint";
          };
        };
      };
    };
  };

  treefmt = lib.cfg.treefmt {
    data.formatter.nix = {
      command = "alejandra";
      includes = ["*.nix"];
    };

    packages = [
      nixpkgs.alejandra
    ];
  };
}
