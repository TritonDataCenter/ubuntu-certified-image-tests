require 'spec_helper'

# The acpid service is disabled in vivid 15.04 and newer. Functionality is covered by systemd
if property[:name].include? "14.04" or property[:name].include? "14.10"
  describe service('acpid') do
  	it { should be_enabled }
  end
end

describe service('cron') do
  it { should be_enabled }
end

describe service('rsyslog') do
  it { should be_enabled }
end

describe service('ssh') do
  it { should be_enabled }
end

