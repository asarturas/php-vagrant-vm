PHP Vagrant Virtual Machine
===========================

Symfony 2.5 BDD Ready Project Seed. With automation of virtual dev environment and deployment to staging.

##Requirements
1. `librarian-chef` is installed (tested with v.0.0.2)
   (`$ gem install librarian-chef`)
1. `vagrant` is installed (tested with v.1.3.4)
   (`http://downloads.vagrantup.com`)
1. `vagrant-omnibus` extension is installed (tested with v.1.1.1)
   (`$ vagrant plugin install vagrant-omnibus`)
1. `vagrant-librarian-chef` extension is installed (tested with v.0.1.5)
   (`$ vagrant plugin install vagrant-librarian-chef`)
1. `knife solo` is installed
   (`$ gem install knife-solo`)
1. `capifony` is installed
   (`$ gem install capifony`)

##Virtual Machine Installation Instructions

Before you start change `php-vagrant-vm` to your project name/domain at:

1. `tools/vagrant/Vagrantfile`

Installation steps:

1. Change project settings at your will in `tools/vagrant/Vagrantfile`
1. Build virtual machine: `$ cd tools/vagrant && vagrant up`
1. Switch to virtual machine shell: `$ vagrant ssh`
1. Install dependencies in composer: `$ cd /mnt/project` and `$ composer install`

P.S. Don't forget to add virtual host into `hosts` file on your machine, where you run vm
   (by default: `192.168.33.10   dev.php-vagrant-vm`)

##Staging Environment Provisioning Instructions

Before you start change `php-vagrant-vm` to your project name/domain at:

1. `tools/chef/site-environments/staging.json`
1. `tools/chef/site-nodes/staging.php-vagrant-vm.json` (this file have to be renamed to match your project domain)

Provisioning steps:

1. Make sure you have passwordless access to staging via `staging.php-vagrant-vm` configured at `~/.ssh/config`
1. Install 64bit Debian 7 on your staging environment
1. Prepare environment to provisioning
   (`$ cd tools/chef && knife solo prepare staging.php-vagrant-vm`)
1. Provision environment
   (`$ knife solo cook staging.php-vagrant-vm`)

##Staging Environment Deployment Instructions

Before you start change `php-vagrant-vm` to your project name/domain at:

1. `tools/capifony/config/deploy.rb`

Deployment steps:

1. Deploy project
   (`$ cd tools/capifony && cap deploy`)
