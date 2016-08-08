# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.network "forwarded_port", guest: 4465, host: 4465
  
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1536"
  end
  
  config.vm.provision "shell", path: "provision.sh", env: {
    "NER_VERSION" => "stanford-ner-2015-04-20"
  }

end
