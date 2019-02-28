Vagrant.configure("2") do |config|
  config.vm.box = "debian/contrib-stretch64"
  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.provision "shell", inline: <<-SCRIPT
    echo "deb http://deb.debian.org/debian stretch-backports main" >> /etc/apt/sources.list.d/backoprts.list
    apt-get update -y
    apt-get install -y openjdk-11-jdk-headless
  SCRIPT
end
