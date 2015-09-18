# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/trusty64"
  
  config.vm.provision "docker" do |d|
    d.build_image "/vagrant", args: "-t docker-git-php-composer"
  end

end
