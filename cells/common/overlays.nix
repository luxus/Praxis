# SPDX-FileCopyrightText: 2023 Mikaela Allan
#
# SPDX-License-Identifier: GPL-3.0-or-later
{
  inputs,
  cell,
}: {
  default = final: prev: {
    mklcaPraxis = prev.mklcaPraxis.extend (finalPraxis: prevPraxis: {
      base16 = final.lib.makeExtensible (base16: {
        inherit (cell.data.theme.base16) schemeName;

        lib = prev.callPackage inputs.base16.lib {};

        scheme = base16.lib.mkSchemeAttrs base16.schemeFile;

        schemeFile = "${inputs.base16-schemes}/${base16.schemeName}.yaml";
      });
    });

    vimPlugins = prev.vimPlugins.extend (finalVimPlugins: prevVimPlugins: {
      base16-vim = prevVimPlugins.base16-vim.overrideAttrs (old: {
        patchPhase =
          (old.patchPhase or "")
          + ''
            cp ${final.mklcaPraxis.base16.scheme inputs.base16-vim} colors/base16-scheme.vim
          '';
      });
    });
  };
}
