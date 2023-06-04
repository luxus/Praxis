{
  enable = true;
  libdefaults.default_realm = "LUXUS.LOCAL";
  logging = {
    kdc = "FILE:/var/log/krb5/krb5kdc.log";
    admin_server = "FILE:/var/log/krb5/kadmind.log";
    default = "FILE:/var/log/krb5/krb5lib.log";
  };
  realms = {
    "LUXUS.LOCAL" = {
      kdc = ["dc.luxus.local"];
      admin_server = "dc.luxus.local";
      default_domain = "luxus.local";
    };
  };
  domain_realm = {
    "luxus.local" = "LUXUS.LOCAL";
    ".luxus.local" = "LUXUS.LOCAL";
  };
}
