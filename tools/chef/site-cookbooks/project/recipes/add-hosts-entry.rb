execute "echo \"127.0.0.1 #{node['project']['server_name']}\" >> /etc/hosts" do
    not_if "grep \"127.0.0.1 #{node['project']['server_name']}\" /etc/hosts"
end