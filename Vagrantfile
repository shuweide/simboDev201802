# -*- mode: ruby -*-
# vi: set ft=ruby :
#
Vagrant.require_version ">= 2.0.2"

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.


boxes = [
    {
        :name => "ansible-master",
        :eth1 => "192.168.205.10",
        :mem => "1024",
        :cpu => "1"
    },
    {
        :name => "ansible-worker1",
        :eth1 => "192.168.205.11",
        :mem => "1024",
        :cpu => "1"
    },
	{
        :name => "ansible-worker2",
        :eth1 => "192.168.205.12",
        :mem => "1024",
        :cpu => "1"
    }
]

Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/xenial64"

  boxes.each do |opts|
      config.vm.define opts[:name] do |config|
        config.vm.hostname = opts[:name]

        config.vm.provider "vmware_fusion" do |v|
          v.vmx["memsize"] = opts[:mem]
          v.vmx["numvcpus"] = opts[:cpu]
        end

        config.vm.provider "virtualbox" do |v|
          v.customize ["modifyvm", :id, "--memory", opts[:mem]]
          v.customize ["modifyvm", :id, "--cpus", opts[:cpu]]
        end

        config.vm.network :private_network, ip: opts[:eth1]
      end
  end
  
  config.ssh.insert_key = false
  
  config.vm.provision "shell", privileged: true, path: "./setup.sh"
  
  config.vm.define "ansible-master" do |master|
      master.vm.synced_folder "./exbooks", "/home/vagrant/exbooks"
	  master.vm.provision "shell", inline: <<-SHELL
		echo "install ansible"
		sudo apt-get update
		sudo apt-get install software-properties-common --yes
		sudo apt-add-repository ppa:ansible/ansible
		sudo apt-get update
		sudo apt-get install ansible --yes
		ansible --version
		echo "install ansible done"
	  SHELL
  end
end