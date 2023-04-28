# SPDX-FileCopyrightText: 2023 Mikaela Allan
#
# SPDX-License-Identifier: GPL-3.0-or-later
{
  inputs,
  cell,
}: {
  hashedPasswords.em = "$6$cy9XYCSl7fE8W3Tr$F20vxCKh8VzacTM9f36WXj.u0A9/facrP0ODHzUOOJqDfYTlyWKSJjjhdl42i6IULbLRB0orOmcUEkY9Hb7.9/";

  sshPublicKeys = {
    users = {
      em = [
        {
          type = "ecdsa-sha2-nistp521";
          publicKey = "AAAAE2VjZHNhLXNoYTItbmlzdHA1MjEAAAAIbmlzdHA1MjEAAACFBAAsDbwD7Ay/QMC5bvIhQL5MjJdze/SI/eq+UWVeRdAfq2zZfB/yiVkNvO4dwzNJ18TSbig32ZOCNvEqu5aBGvT04AD987ls8l4+QvskfoAUFX0fbLOZcpfxpIU1W+JomxtIY+dQhlFBje1MgczEfv8CsJyPhsGg19EEfIYgNQ/knaZfgg==";
        }
        {
          type = "ssh-ed25519";
          publicKey = "AAAAC3NzaC1lZDI1NTE5AAAAIAIZ1Q68SQWLxK1C8zUwa1CZ5fwYNEbG8YhjmImqdinm";
        }
        {
          type = "ssh-rsa";
          publicKey = "AAAAB3NzaC1yc2EAAAADAQABAAACAQDjv6a8TvxdxsUVTaeovaLOZQ/38uWHH2slgD2W+OSy4Rg+GqPCTej5DWnloJMa/45IS+H1CnD5In1PPx80fXEjkN4zvsA6ifLhR5g8Z3Qc2u9Q+4DxCHUyow9vwPrvBRYshqoOEdj8rhWAptUZ3TPmUP6KrsiyUYXuLpBKLt7q3m9AG166xT5TUnoNkDhyP8Ila4JeQpOZKjXmaucdKa/QxDZy8d3/K17ndKTOdcJ8WLBMVgsCGhzARVpxColcBDmzHeEYPybXYTHyxl6BUg/E6FI9batam3VAyWiqLDer9oKlsiTJptkroAYPbk1rwr+jo9PW09+0FAxvSlHPpEGOJsL9nnjJgPSmASlrxrbAFeR7Z6IMFGd5U4ptTA/vcMBjr9zfuDIz1N2fSurs5Wuc3+LPPgqqdRSbbHVJ3MTDpfIvTWk+xNj6Q/dsQPMCngDss+UDf/742noa0zN4kOZmlU7x9npuGdySbi+WpjAN2dFRfXbZDlwIUmmXDr/mMw6AicsZ/CKpUYXWi9w7YRe0f4jk6jtr3GPqHSXW/Pvq2/5+PSAA2JyW5gyyBlJldvPPbxKzgVCCxlz4Eqme21nYTzbllHOQU2jaWgDIuHTJ0EW1KlzV4nn7GhhHNC0YrMwLtv0tLIVE8zyfxP91bOzlEjLC7oSsT9KOjSG6W2kckw==";
        }
      ];

      "root@ananke" = [
        {
          type = "ecdsa-sha2-nistp256";
          publicKey = "AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBOkMaYBbh8Z9i+kKwqNQUfXlEQ3kjT+jb7+mya2UGBWOn2/AYrImxXgfYZ3cPKHnX1jll3+PF3SVAoWYChsnprw=";
        }
        {
          type = "ssh-ed25519";
          publicKey = "AAAAC3NzaC1lZDI1NTE5AAAAIE9S7g2f5Y8xkSCWO4LPXCxStJeAXde8jXq1NT3Hip8h";
        }
        {
          type = "ssh-rsa";
          publicKey = "AAAAB3NzaC1yc2EAAAADAQABAAABAQDKBFxaKqUIpauB4r8Oy9j/hDMvY2QZSubf23w55tFNcqYiJkNx8A4m/tI0Yn0Oqy/92k5I5YbyOT1Ql5apaS8vcrBOSOkVLc4b9imDEN0X875IVrV8uyxpVnLbYa/HzV4J/z6lONXDh2PgC/e0Rvba9m1zujFm3ZG3pv9fQelxzA1IZpVP6rMc3rrJyVpRuhag59KYLP1rT6PgDpepS3vSHaQeYRoutJivQ5azFyd/Qu/jg+P+VmdKzLajVp+XfFJ65qK5IIenWhIuhjIlTgF4AKJhwmBvuYlX3/hosEVyLkCZy2Ai+78e3ENZfW0n5t/sLZF84nq9Zo0cGCfPwA/n";
        }
      ];

      "root@nexus" = [
        {
          type = "ecdsa-sha2-nistp256";
          publicKey = "AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBOaihXVxnIx2JUs7NcneFPKwC39vZxC464MSeSWxXC2N4uKKY/hpxS0SSp2r3AhcTsi6CpQM5zXsrUSe/NJTKbk=";
        }
        {
          type = "ssh-ed25519";
          publicKey = "AAAAC3NzaC1lZDI1NTE5AAAAILG+pvTgIu8q8ScABxZ+o6CNn+oEfna4LEcoRk3SySat";
        }
        {
          type = "ssh-rsa";
          publicKey = "AAAAB3NzaC1yc2EAAAADAQABAAABAQCaWf6xP98JKODp1q5FmP+w5yTLlenJZ7DWPuS4pJEYg2z/QxaToCOrMNOhwQ8Pk/sd9kNOUUcTgrl2nKDuyUd9eudUWAt0IMZgxKpJg5SElvw9FYwPODI9oTUhTbygcH4AfdOBc7g1kAVLXHQ3EXH945Zft+Ucg3jXuI0OX4S1mZsy3yVsNgKKgwuZJBSmaUbJBjewRFRXg7aJLuhe82/8t6Xqc/97rgXciRtJcoWf/0ciOi9JTdJNXUSQH0bHpJlSW9Dg8NCYcWQix+QVfXmw8GxW1wxaAyT8tm/Um7e6QYOsQsJoSCcy1ZI2xm5LZxVvac6v0a0PnUGKgc/MuRiT";
        }
      ];
    };

    machines = {
      ananke = [
        {
          type = "ssh-ed25519";
          publicKey = "AAAAC3NzaC1lZDI1NTE5AAAAIHZr0Uwyoqitsnq7a089fRyARE0QK0h+AOU8JTKmwU19";
        }
        {
          type = "ssh-rsa";
          publicKey = "AAAAB3NzaC1yc2EAAAADAQABAAABgQDYOXTwpa6JOhxL+NZBUlTm823S9T2Hnh8QYHIZrpgg4OEa1pMBD7oxBgG1FGd4OOyy1WLGfsp7+DDqBJ2OlwgOk/l6doMwu3kytzUb6Vhsd7DHnuNl28WuMjIR9HPOFEr4tbCvbvGuZ1SddtkOn0RWUzCnzhnZiFwN8IfMfILunUiilFPvuFyulE+lVKr9TiSXdqgJ+awsuyF9pDCs61utbhCrI6xTVVN7J/IRlwuhYiwn5jgjWQyxwuJktYVH53eH2uF8e4jvJA5ukWSPBu2HUATUZDqe2tfRpHEnraeOWyO4QIvE+MEGEmggak8rc2fCE6Uqv/Ct3MNUNMg/yMKnkoN4wsc9Ryn69vIVQvmx7O5lmdY38uJ+K2hqLix2JUmRwDOXieMYbyXyf1wdkO0EGdJEdW+s+SplwxjkxavhqihljOhx7POW+xAW8t43uZLxugFMimaCMcAyNLjd9XN3tiE2QNj4qUDkgCQN1upP1IKCTOsGhka6YUu1dndqFEU=";
        }
        {
          type = "ecdsa-sha2-nistp256";
          publicKey = "AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBFSeDE4cERX/S87CypEOAcuROCz6Swa29hvBXSyjSgrjKha7QHvhSDyPnqj9JlD9ObKyl0NWdZVhYJNhQuNDYTQ=";
        }
      ];

      nexus = [
        {
          type = "ssh-ed25519";
          publicKey = "AAAAC3NzaC1lZDI1NTE5AAAAIJmrBRr2OUS7pP9TboIxm8KnMUfDX3HOM/0qM7Liw6El";
        }
        {
          type = "ssh-rsa";
          publicKey = "AAAAB3NzaC1yc2EAAAADAQABAAACAQC84EV699aTSOlInu9JGdcF2K042anK2EK5bcUVuPbvfAh1Ac04hAxKwwscer53//hK5TsXNzGtanCTkj6MtSVYt+HBVV0Nf/cHDmcGlwqW+MgpTIS28rTiVgA1JjY8srjq9iMMM5IecLbZ0Ma/TJ7aIAljTQGB0rJrzN3AEYp5RupUl/oDyBnMl766HHUb+fTh1pwiGpLUPFiuiMh2ajLlSS2Mz2wu2lyv1zcBXGdkSkxfR6tbxQhj5hfRWoQRBQJKJYk1wtxHQNo//M431OKeGHCCx2yqwOKy20dTXJFD3FKHV817rhPjurKVNrvPZIBvGhtDeXylDE3njnhjVsX0lw1GEuDIX/dMiq+F4lcx3uSPiwOBR5TooCviZZ/95sBmcV4rcLgzBbl21X2ETGhezjuedB2cMPKRsF8FtVGte5d07qll+49n3BrG3Vhi4/Jhx9Y35nxu6k+y3F6O6yir9qRDXy8bjKTRmCh14CMYzERpTRF6uhj25epEwDy8UevczmQ8qfeFpAKdbAvtBo8tajDzvlLFSRsZKdw926unRVZFdzVbNMUVlc3l/AzumeNILY6U/i+sAVxgBFHCfYBmfWQX7L9eywZhI91TX/GfGyLm3mxTFnVF3RUl2/bf567YqsI5/siPU1bP7U77YTlDHzF/1BIXBMEcXannz+clpQ==";
        }
      ];
    };
  };
}
