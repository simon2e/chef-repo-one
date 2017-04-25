# # encoding: utf-8

# Inspec test for recipe mongodb::mongo_sys_config

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe limits_conf('/etc/security/limits.d/mongod.conf') do
  its('mongod') { should include ['soft', 'nproc', '32000'] }
end
