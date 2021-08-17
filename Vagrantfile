# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
$script = <<-SCRIPT
    echo Heyy...How ya doin...
	date > /etc/vagrant_provisioned_at
    SCRIPT
Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |v|

        v.memory = 2048

        v.cpus = 2
     
    end
  
  config.vm.define "docker" do |docker|
  docker.vm.hostname = "docker"
  docker.vm.box = "centos/7"
   docker.vm.provider "virtualbox" do |v|
   docker.vm.synced_folder ".", "/filess", type: "rsync"
          v.name = "docker"
   docker.vm.network "forwarded_port", guest: 8080, host: 9090
   docker.vm.network "forwarded_port", guest: 5000, host: 5000
      end
	 # docker.vm.provision "shell" , inline: $script
  #docker.vm.provision "docker" do |d|
      #d.run "hello-world"
  #end
   docker.vm.provision "shell" , inline: "sudo su - && yum install -y dos2unix "
   docker.vm.provision "shell" , inline: "sudo su - && dos2unix  /vagrant/docker.sh "
   docker.vm.provision "shell" , inline: "sudo su - && sh /vagrant/docker.sh "
	  end
 
   
   
   
 
   
  
  
end
