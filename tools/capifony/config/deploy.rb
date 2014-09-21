set :application, "php-vagrant-vm"
set :domain,      "staging.#{application}"
set :deploy_to,   "/var/www/#{domain}"
set :app_path,    "app"

ssh_options[:forward_agent] = true
default_run_options[:pty] = true

set :repository,  "git@github.com:githubusername/#{application}.git"
set :scm,         :git

set :model_manager, "doctrine"

role :web,        domain                         # Your HTTP server, Apache/etc
role :app,        domain, :primary => true       # This may be the same as your `Web` server

set  :keep_releases,  5

# Be more verbose by uncommenting the following line
# logger.level = Logger::MAX_LEVEL

set :shared_files,    ["app/config/parameters.yml"]
set :shared_children, [app_path + "/logs", "vendor"]
set :use_composer, true
set :composer_bin, 'composer'
set :update_vendors, true
set :controllers_to_clear, []
set :symfony_env_prod, "prod"
set :cache_warmup, false
