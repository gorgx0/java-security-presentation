Vagrant.configure("2") do |config|
  config.vm.box = "debian/contrib-stretch64"
  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.network "forwarded_port", guest: 7777, host: 7777
  config.ssh.forward_x11 = true
  config.vm.provision "shell", preserve_order: true, privileged: true, path: "provision_as_root.sh"
  config.vm.provision "shell", preserve_order: true, privileged: false, path: "provision_as_no_root.sh"
end
