#
# Cookbook:: mongodb
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

case node['platform']     # extend for other platforms as required
when 'redhat', 'centos'
  include_recipe 'mongodb::mongodb_yum_repo'
end

package 'Install MongoDB' do
  package_name 'mongodb-org'
end

service 'mongod' do
  action [:enable, :start]
end
