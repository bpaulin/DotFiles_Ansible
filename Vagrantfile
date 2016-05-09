# -*- mode: ruby -*-
# vi: set ft=ruby :

# Lecture de la configuration
require 'yaml'

def symbolize_keys(hash)
  hash.inject({}){|result, (key, value)|
    new_key = case key
              when String then key.to_sym
              else key
              end
    new_value = case value
                when Hash then symbolize_keys(value)
                else value
                end
    result[new_key] = new_value
    result
  }
end

settings = YAML::load_file "settings.yml"
settings = symbolize_keys(settings)

# Configuration de la vm
Vagrant.configure("2") do |config|
  config.vm.box = "debian/jessie64"

  config.vm.provider :virtualbox do |v|
    v.name = "devansible"
    v.gui = true
    v.customize [
      "modifyvm", :id,
      "--name", "devansible",
      "--memory", settings[:ram],
      "--natdnshostresolver1", "on",
      "--cpus", settings[:proc],
      "--clipboard", "bidirectional"
    ]
  end
  config.ssh.forward_agent = true

  if Vagrant.has_plugin?("vagrant-proxyconf")
    config.proxy.http     = settings[:proxy]
    config.proxy.https    = settings[:proxy]
    config.proxy.no_proxy = "localhost,127.0.0.1"
  end
end
