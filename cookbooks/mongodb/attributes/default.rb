#
# Cookbook Name:: mongodb
# Attributes:: default
#

# MongoDB versions affect the repo path
default['mongodb_yum_repo']['mongodb_version'] = '3.4'

# major server config items. Port and IP should probably be overridden for production role
# if the db, log and pidfile paths are changed they will need to be provisioned
default['mongodb']['config']['systemLogPath']  = '/var/log/mongodb/mongod.log'
default['mongodb']['config']['dbPath']         = '/var/lib/mongo'
default['mongodb']['config']['pidFilePath']    = '/var/run/mongodb/mongod.pid'
default['mongodb']['config']['netPort']        = '27017'    # default is 27017
default['mongodb']['config']['bindIp']         = '0.0.0.0'
