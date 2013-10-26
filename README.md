PHP Vagrant Virtual Machine
===========================

Can be used for bringing up simple lamp (debian) virtual machine with composer and fish shell preinstalled.

#Demo Project: Petition Website

##Requirements
1. `librarian-chef` is installed (tested with v.0.0.2)
   (`$ gem install librarian-chef`)
1. `vagrant` is installed (tested with v.1.3.4)
   (`http://downloads.vagrantup.com`)
1. `vagrant-omnibus` extension is installed (tested with v.1.1.1)
   (`$ vagrant plugin install vagrant-omnibus`)

##Installation Instructions

1. Install dependencies in chef: `$ cd tools/chef && librarian-chef install`
1. Build virtual machine: `$ cd ../vagrant && vagrant up`
1. Switch to virtual machine shell: `$ vagrant ssh`
1. Install dependencies in composer: `$ cd /mnt/project` and `composer install`

P.S. Don't forget to add virtual host into `hosts` file on your machine, where you run vm
