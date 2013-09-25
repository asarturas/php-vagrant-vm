bash "remote_php_module_config_duplicates" do
  user "root"
  cwd "/"
  code <<-EOH
  mv /etc/php5/conf.d/xdebug.ini /etc/php5/mods-available/xdebug.ini
  mv /etc/php5/conf.d/mcrypt.ini /etc/php5/mods-available/mcrypt.ini
  EOH
end
