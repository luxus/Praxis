# SPDX-FileCopyrightText: 2023 Mikaela Allan
#
# SPDX-License-Identifier: GPL-3.0-or-later
{
  inputs,
  cell,
}: let
  inherit (inputs) haumea;
  l = inputs.nixpkgs.lib // builtins;
in
  l.genAttrs ["base" "em"] (nixvimConfigName:
    haumea.lib.load {
      inputs = (builtins.removeAttrs inputs ["self" "super" "root"]) // {inherit cell inputs;};
      loader = haumea.lib.loaders.default;
      transformer = haumea.lib.transformers.liftDefault;
      src = inputs.self + "/common/nixvim-configs/${nixvimConfigName}";
    })
