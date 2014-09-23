bash "install project dependencies" do
  cwd "/tmp"
  code <<-EOH
    mkdir npm-project-dependencies
    cd npm-project-dependencies
    cp /mnt/project/package.json .
    cp /mnt/project/npm-shrinkwrap.json .
    npm install
    mv node_modules /mnt/project/
    cd ..
    rm -Rf npm-project-dependencies
  EOH
end
