# frozen_string_literal: true

# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'yaml'

nodes = YAML.safe_load(File.read('config.yml'))['nodes']

Vagrant.configure('2') do |config|
  config.vm.box = 'centos/7'

  nodes.each do |node|
    node_name = node['name'].split('.').first
    node_ip = node['ip']
    node_cpus = node['cpus']
    node_memory = node['memory']
    node_shell = node['shell']

    config.vm.define node_name do |host|
      host.vm.network :private_network, ip: node_ip
      host.vm.hostname = node_name

      host.vm.provider :virtualbox do |vb|
        vb.gui = false
        vb.memory = node_memory
        vb.cpus = node_cpus
        vb.name = node_name
      end

      config.vm.provision :shell, path: node_shell
    end
  end
end
