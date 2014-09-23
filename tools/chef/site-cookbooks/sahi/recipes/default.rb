bash "download sahi to temporary location" do
  user "root"
  cwd "/opt"
  code <<-EOH
  wget -O install_sahi_v44_20130429.jar http://sourceforge.net/projects/sahi/files/sahi-v44/install_sahi_v44_20130429.jar/download
  EOH
end

template "/opt/silent_install.xml" do
  user "root"
  mode "0644"
  variables(
      :params => node['sahi']
  )
end

bash "install sahi in headless mode" do
  user "root"
  cwd "/opt"
  code <<-EOH
  java -jar install_sahi_v44_20130429.jar silent_install.xml
  EOH
end

template "/opt/sahi_pro/userdata/config/browser_types.xml" do
  user "root"
  mode "0644"
  variables(
      :params => node['sahi']
  )
end

template "/etc/init.d/sahi" do
  user "root"
  mode "0755"
  variables(
      :params => node['sahi']
  )
end

# bash "add init.d script to default runlevel" do
#   user "root"
#   cwd "/opt/sahi_pro"
#   code <<-EOH
#   update-rc.d sahi defaults
#   EOH
# end
