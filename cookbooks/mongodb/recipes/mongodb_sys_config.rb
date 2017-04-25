#
# Cookbook:: mongodb
# Recipe:: mongodb_sys_config
#
# Copyright:: 2017, The Authors, All Rights Reserved.

cookbook 'limits', '~> 1.0.0'

set_limit 'mongod' do
  type 'soft'
  item 'nproc'
  value 32000
end
