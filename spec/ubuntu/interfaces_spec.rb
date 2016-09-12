require 'spec_helper'

# This test requires a VM to be provision with two IPs, preferably one public
# and one private.

# Test to ensure the VM has two interfaces
# Older images use eth0 and eth1, 16.04 and up use net0 and net1


if property[:release] >= 16.04
    # net0
    describe interface('net0') do
      it { should exist }
    end

    describe interface('net0') do
      it { should be_up }
    end

    # net1
    describe interface('net1') do
      it { should exist }
    end

    describe interface('net1') do
      it { should be_up }
    end
else
    # eth0
    describe interface('eth0') do
      it { should exist }
    end

    describe interface('eth0') do
      it { should be_up }
    end

    # eth1
    describe interface('eth1') do
      it { should exist }
    end

    describe interface('eth1') do
      it { should be_up }
    end
end
