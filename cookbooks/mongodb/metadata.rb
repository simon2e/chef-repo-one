name 'mongodb'
maintainer 'Simon Tuohey'
maintainer_email 'you@example.com'
version '0.3.0'
chef_version '>= 12.1' if respond_to?(:chef_version)
description 'Installs/Configures mongodb'
long_description 'Installs/Configures mongodb, learning exercise. NOT PRODUCTION READY'
license 'all_rights'
privacy true
recipe 'mondodb::default', 'Install mongodb-org package'
recipe 'mongodb::mongodb_repo', 'Install yum repo file for mongodb-org distribution'
recipe 'mongodb::mongodb_sys_config', 'Update system variables for mongodb hosting'
source_url 'https://github.com/simon2e/chef-repo-one'
supports 'centos', '>= 7.3'
