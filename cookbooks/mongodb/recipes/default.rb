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

template '/etc/mongod.conf' do
  source 'dbconfig_file.erb'
  owner 'root'
  group 'root'
  mode  '0644'
  # can't reload config in mongodb without service impact, or would use notifies here
end

service 'mongod' do
  action [:enable, :start]
end
