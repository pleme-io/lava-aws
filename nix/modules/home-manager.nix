# nix/modules/home-manager.nix — auto-generated from lava-aws.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.lava-aws; in {
  options.programs.lava-aws = {
    enable = lib.mkEnableOption "lava-aws";
    package = lib.mkOption { type = lib.types.package; default = pkgs.lava-aws or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
