bash "remote_php_module_config_duplicates" do
  user "root"
  cwd "/"
  code <<-EOH
  wget http://fishshell.com/files/2.0.0/linux/Debian_6.0/x86_64/fish_2.0.0-201305151006_amd64.deb
  sudo dpkg -i fish_2.0.0-201305151006_amd64.deb
  sudo usermod -s /usr/bin/fish vagrant
  EOH
end
