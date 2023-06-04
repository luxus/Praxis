{ pkgs, ... }:
{
  enable = true;
  openFirewall = true;
  invalidUsers = [ "root" ];
  securityType = "ads";
  package = pkgs.samba4Full;
  #enableNmbd = false;
  #enableWinbindd = true;
  extraConfig = ''
  ntlm auth = mschapv2-and-ntlmv2-only
    server string = RADIUS server
       realm = LUXUS.LOCAL
       workgroup = LUXUS
      socket options = TCP_NODELAY
      idmap uid = 16777216-33554431
      idmap gid = 16777216-33554431
      winbind use default domain = no
#      winbind max domain connections = 5
#      winbind max clients = 1000
      password server = dc.luxus.local
       [homes]
       comment = Home Directories
       browseable = no
       writable = yes
  '';

}
