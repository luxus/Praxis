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
  inherit (inputs.cells.common.data.nix) registry;

  buildMachines = [
    {
      hostName = "nexus.local";
      publicHostKey = "c3NoLWVkMjU1MTkgQUFBQUMzTnphQzFsWkRJMU5URTVBQUFBSUptckJScjJPVVM3cFA5VGJvSXhtOEtuTVVmRFgzSE9NLzBxTTdMaXc2RWwgcm9vdEBuZXh1cwo";
      system = "x86_64-linux";
      sshUser = "rnixbld";
      sshKey = "/var/root/.ssh/id_ed25519";
      maxJobs = 4;
      supportedFeatures = [
        "benchmark"
        "big-parallel"
        "kvm"
        "nixos-test"
      ];
    }
  ];

  distributedBuilds = true;

  extraOptions = ''
    !include /etc/nix/secrets.conf

    extra-experimental-features = nix-command flakes

    keep-outputs = true
    keep-derivations = true
  '';

  settings = {
    inherit (inputs.cells.common.data.nix) substituters trusted-public-keys;

    cores = 8;

    max-jobs = 4;

    trusted-users = [
      "@wheel"
      "rnixbld"
      "root"
    ];
  };
}
