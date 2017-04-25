# # encoding: utf-8

# Inspec test for recipe mongodb::mongo_yum_repo

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe yum.repo('mongodb-org-3.4') do
  it { should exist }
  it { should be_enabled }
end
