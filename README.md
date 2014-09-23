Symfony 2.5 BDD Ready Project Seed
===========================

Bundled with PHPSpec, Behat (including Mink, Goutte and PhantomJS via Sahi), virtual dev environment and basic setup of deployments to staging environment.

##Requirements
1. `librarian-chef` is installed (tested with v.0.0.2):
      (`$ gem install librarian-chef`);
1. `vagrant` is installed (tested with v.1.3.4):
   (`http://downloads.vagrantup.com`);
1. `vagrant-omnibus` extension is installed (tested with v.1.1.1):
   (`$ vagrant plugin install vagrant-omnibus`);
1. `vagrant-librarian-chef` extension is installed (tested with v.0.1.5):
   (`$ vagrant plugin install vagrant-librarian-chef`);
1. `knife solo` is installed:
   (`$ gem install knife-solo`);
1. `capifony` is installed:
   (`$ gem install capifony`).

##Virtual Machine Installation Instructions

Before you start:

1. change `php-vagrant-vm` to your project name/domain at: `tools/vagrant/Vagrantfile`.

Installation steps:

1. change project settings at your will in `tools/vagrant/Vagrantfile`;
1. build virtual machine: `$ cd tools/vagrant && vagrant up`;
1. switch to virtual machine shell: `$ vagrant ssh`;
1. install dependencies in composer: `$ cd /mnt/project` and `$ composer install`.

P.S. Don't forget to add virtual host into `hosts` file on your machine, where you run vm:
   (by default: `192.168.33.10   dev.php-vagrant-vm`).

##Staging Environment Provisioning Instructions

Before you start:

1.  change `php-vagrant-vm` to your project name/domain at: `tools/chef/site-environments/staging.json`, `tools/chef/site-nodes/staging.php-vagrant-vm.json` (latter file have to be renamed to match your project domain).

Provisioning steps:

1. make sure you have passwordless access to staging via `staging.php-vagrant-vm` configured at `~/.ssh/config`;
1. install 64bit Debian 7 on your staging environment;
1. prepare environment to provisioning:
   (`$ cd tools/chef && knife solo prepare staging.php-vagrant-vm`);
1. provision environment:
   (`$ knife solo cook staging.php-vagrant-vm`).

##Staging Environment Deployment Instructions

Before you start:

1. change `php-vagrant-vm` to your project name/domain at: `tools/capifony/config/deploy.rb`;
1. create ssh key on your target staging environment:
   (`$ ssh-keygen -t rsa -C "your_email@example.com"`);
1. add this public key as a deployment key to your project on github.

Deployment steps:

1. setup deployment (only the first time):
   (`$ cd tools/capifony && cap deploy:setup`);
1. deploy project (same directory as previous step):
   (`$ cap deploy`).
