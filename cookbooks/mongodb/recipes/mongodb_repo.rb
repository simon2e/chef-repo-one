#
# Cookbook:: mongodb
# Recipe:: mongodb_repo
#
# Copyright:: 2017, The Authors, All Rights Reserved.

repover= node['mongodb-repo']['version']

yum_repository "mongodb-org-#{repover}" do
  description "MongoDB Repository - "
  baseurl "https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/#{repover}/$basearch/"
  gpgkey "https://www.mongodb.org/static/pgp/server-#{repover}.asc"
  action :create
end
