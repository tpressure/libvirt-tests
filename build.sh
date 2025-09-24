nix flake update libvirt-src cloud-hypervisor-src && nix build -L .\#tests.x86_64-linux.driverInteractive --builders "" && ./result/bin/nixos-test-driver
