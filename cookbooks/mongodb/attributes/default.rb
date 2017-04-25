#
# Cookbook Name:: mongodb
# Attributes:: default
#

# MongoDB versions affect the repo path
default['mongodb_yum_repo']['mongodb_version'] = '3.4'

default['mongodb']['config']['systemLogPath']  = '/var/log/mongod/mongod.log'
default['mongodb']['config']['dbPath']         = '/var/lib/mongod'
default['mongodb']['config']['pidFilePath']    = '/var/run/mongodb/mongod.pid'
default['mongodb']['config']['netPort']        = '27022'
default['mongodb']['config']['bindIp']         = '0.0.0.0'
