{ lib, ... }:
let
  postgresqlDefaults = lib.types.submodule {
    options = {
      port = lib.mkOption {
        type = lib.types.str;
        default = "5435";
      };
      host = lib.mkOption {
        type = lib.types.str;
        default = "localhost";
      };
      superuser = lib.mkOption {
        type = lib.types.str;
        default = "tealbase_admin";
      };
    };
  };
  postgresqlVersion = lib.types.submodule {
    options = {
      version = lib.mkOption { type = lib.types.str; };
      hash = lib.mkOption { type = lib.types.str; };
    };
  };
  tealbaseSubmodule = lib.types.submodule {
    options = {
      defaults = lib.mkOption { type = postgresqlDefaults; };
      supportedPostgresVersions = lib.mkOption {
        type = lib.types.attrsOf (lib.types.attrsOf postgresqlVersion);
        default = { };
      };
    };
  };
in
{
  flake = {
    options = {
      tealbase = lib.mkOption { type = tealbaseSubmodule; };
    };
    config.tealbase = {
      defaults = { };
      supportedPostgresVersions = {
        postgres = {
          "15" = {
            version = "15.8";
            hash = "sha256-RANRX5pp7rPv68mPMLjGlhIr/fiV6Ss7I/W452nty2o=";
          };
          "17" = {
            version = "17.4";
            hash = "sha256-xGBbc/6hGWNAZpn5Sblm5dFzp+4Myu+JON7AyoqZX+c=";
          };
        };
        orioledb = {
          "17" = {
            version = "17_11";
            hash = "sha256-RZYU955PmGZExfX2JKw1dIQMMuuswtAXpXjZ9CLbOsw=";
          };
        };
      };
    };
  };
}
