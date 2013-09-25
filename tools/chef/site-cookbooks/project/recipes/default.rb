include_recipe "apache2"

web_app node['project']['site_name'] do
  server_name node['project']['server_name']
  server_aliases node['project']['server_aliases']
  docroot node['project']['docroot']
  allow_override node['project']['allow_override']
end