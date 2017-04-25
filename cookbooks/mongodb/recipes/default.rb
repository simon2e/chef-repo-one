#
# Cookbook:: mongodb
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

case node['platform']
when 'redhat', 'centos'
  include_recipe 'mongodb::mongodb_repo'
end

package 'Install MongoDB' do
  package_name 'mongodb-org'
end

service 'mongod' do
  action :start
  action :enable
end
