require 'spec_helper'

describe command('sudo apt-get update') do
  its(:exit_status) { should eq 0 }
end

describe command('sudo apt-get -y upgrade') do
  its(:exit_status) { should eq 0 }
end
