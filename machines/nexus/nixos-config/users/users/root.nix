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
  openssh.authorizedKeys.keys = [
    # Private keys belonging to root on Ananke used for Nix distributed builds
    "ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBOkMaYBbh8Z9i+kKwqNQUfXlEQ3kjT+jb7+mya2UGBWOn2/AYrImxXgfYZ3cPKHnX1jll3+PF3SVAoWYChsnprw= root@ananke"
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIE9S7g2f5Y8xkSCWO4LPXCxStJeAXde8jXq1NT3Hip8h root@ananke"
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDKBFxaKqUIpauB4r8Oy9j/hDMvY2QZSubf23w55tFNcqYiJkNx8A4m/tI0Yn0Oqy/92k5I5YbyOT1Ql5apaS8vcrBOSOkVLc4b9imDEN0X875IVrV8uyxpVnLbYa/HzV4J/z6lONXDh2PgC/e0Rvba9m1zujFm3ZG3pv9fQelxzA1IZpVP6rMc3rrJyVpRuhag59KYLP1rT6PgDpepS3vSHaQeYRoutJivQ5azFyd/Qu/jg+P+VmdKzLajVp+XfFJ65qK5IIenWhIuhjIlTgF4AKJhwmBvuYlX3/hosEVyLkCZy2Ai+78e3ENZfW0n5t/sLZF84nq9Zo0cGCfPwA/n root@ananke"
  ];
}
