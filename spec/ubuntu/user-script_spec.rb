require 'spec_helper'

# Test for user-script. This needs to be set on the test VM.
describe file('/var/db/user-script') do
  it { should be_symlink }
  it { should be_owned_by 'root' }
end


describe file('/var/tmp/test') do
  it { should be_file }
  it { be_readable }
  it { should be_owned_by 'root' }
  it { should contain 'testing user-script' }
end
