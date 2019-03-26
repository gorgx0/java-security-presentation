Vagrant.configure("2") do |config|
  config.vm.box = "debian/contrib-stretch64"
  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.network "forwarded_port", guest: 7777, host: 7777
  config.ssh.forward_x11 = true
  config.vm.provision "shell", inline: <<-SCRIPT
    echo "deb http://deb.debian.org/debian stretch-backports main" > /etc/apt/sources.list.d/backoprts.list
    apt-get update -y
    apt-get install -y vim zip unzip curl git zsh 
#    apt-get install -y openjdk-11-jdk-headless
#    su - vagrant sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    chsh -s /bin/zsh vagrant
  SCRIPT
end
