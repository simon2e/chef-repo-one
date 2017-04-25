#
# Cookbook:: mongodb
# Recipe:: mongodb_sys_config
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# set soft nprocs limit as recommended by mongod

set_limit 'mongod' do
  type 'soft'
  item 'nproc'
  value 32000
end
