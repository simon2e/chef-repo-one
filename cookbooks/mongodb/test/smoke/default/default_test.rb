# # encoding: utf-8

# Inspec test for recipe mongodb::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe package 'mongodb-org' do
  it { should be_installed }
end

# need to use attribute lookup to make this a better test
unless os.windows?
  describe user('mongod') do
    it { should exist }
  end
end

# need to use attribute lookup to make this a better test
describe port(27017) do
  it { should be_listening }
end

describe service('mongod') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end

describe file('/etc/mongod.conf') do
  it { should be_file }
  it { should be_owned_by 'root' }
  it { should be_readable }
  it { should_not be_writable.by('group') }
  it { should_not be_writable.by('other') }
end
