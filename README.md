PHP Vagrant Virtual Machine
===========================

Can be used for bringing up simple lamp (debian) virtual machine with composer and fish shell preinstalled.

Requirements:
* virtual box;
* librarian-chef;
* vagrant 2.

Installation:
* Edit tools/vagrant/Vagrant file with any custom settings you are willing to have;
* Install dependencies in chef: `$ cd tools/chef && librarian-chef install`;
* Build virtual machine: `$ cd ../vagrant && vagrant up`.
