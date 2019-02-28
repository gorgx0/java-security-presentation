Vagrant.configure("2") do |config|
  config.vm.box = "debian/contrib-stretch64"
  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.provision "shell", inline: <<-SCRIPT
    apt-get update -y
    apt install dirmngr
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EA8CACC073C3DB2A
    echo "deb http://ppa.launchpad.net/linuxuprising/java/ubuntu bionic main" | sudo tee /etc/apt/sources.list.d/linuxuprising-java.list
    apt-get update -y
    echo oracle-java11-installer shared/accepted-oracle-license-v1-2 select true | sudo /usr/bin/debconf-set-selections
    apt install oracle-java11-set-default -y
  SCRIPT
end
