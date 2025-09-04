{
  pkgs,
  libvirt-src,
  nixos-image,
}:

{
  default = import ./libvirt-test.nix {
    inherit pkgs libvirt-src nixos-image;
    testScriptFile = ./testscript.py;
  };

  long = import ./libvirt-test.nix {
    inherit pkgs libvirt-src nixos-image;
    testScriptFile = ./testscript_long.py;
  };
}
