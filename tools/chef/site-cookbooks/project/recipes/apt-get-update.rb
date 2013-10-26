bash "apt-get-update" do
  user "root"
  cwd "/"
  code <<-EOH
  apt-get update
  EOH
end