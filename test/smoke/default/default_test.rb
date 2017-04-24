# # encoding: utf-8

# Inspec test for recipe chef-repo::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  impact 1.0
  title "check root user"
  desc "the root user should exist"
    describe user('root') do
    it { should exist }
  end
end

impact 1.0
title "check service port"
desc "port 80 should not be open. Yet."
describe port(80) do
  it { should_not be_listening }
end
