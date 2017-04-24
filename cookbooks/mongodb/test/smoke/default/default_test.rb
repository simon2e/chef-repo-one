# # encoding: utf-8

# Inspec test for recipe mongodb::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  describe user('root') do
    it { should exist }
  end
end

describe port(80) do
  it { should_not be_listening }
end
