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
  inherit (inputs.cells.common.data.nix) registry;
  buildMachines = [
    {
      hostName = "ananke.local";
      publicHostKey = "c3NoLWVkMjU1MTkgQUFBQUMzTnphQzFsWkRJMU5URTVBQUFBSUhacjBVd3lvcWl0c25xN2EwODlmUnlBUkUwUUswaCtBT1U4SlRLbXdVMTkgCg==";
      system = "x86_64-darwin";
      sshUser = "rnixbld";
      sshKey = "/root/.ssh/id_ed25519";
      maxJobs = 4;
      supportedFeatures = [
        "benchmark"
        "big-parallel"
      ];
    }
  ];

  daemonCPUSchedPolicy = "batch";

  distributedBuilds = true;

  extraOptions = ''
    !include /etc/nix/secrets.conf

    extra-experimental-features = nix-command flakes

    keep-outputs = true
    keep-derivations = true
  '';

  settings = {
    inherit (inputs.cells.common.data.nix) substituters trusted-public-keys;
    auto-optimise-store = true;

    cores = 8;
    max-jobs = 4;

    trusted-users = [
      "@wheel"
      "rnixbld"
      "root"
    ];
  };
}
