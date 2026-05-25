# nix/modules/darwin.nix — auto-generated from lava-aws.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.lava-aws; in {
  options.services.lava-aws = {
    enable = lib.mkEnableOption "lava-aws";
    package = lib.mkOption { type = lib.types.package; default = pkgs.lava-aws or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
