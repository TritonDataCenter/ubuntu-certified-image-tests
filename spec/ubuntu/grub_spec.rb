require 'spec_helper'

describe file('/etc/default/grub.d/50-cloudimg-settings.cfg') do
	it { should be_file }
  it { should contain "GRUB_TIMEOUT=5" }
end


# This will change for the final 16.04 image and the testing logic should be modified.
# net.ifnames=0 was added to 16.04 to ensure the image uses eth(0-9) interface 
# naming
if property[:release] >= 16.04
  describe file('/etc/default/grub.d/50-cloudimg-settings.cfg') do
    it { should contain "GRUB_CMDLINE_LINUX_DEFAULT=\"tsc=reliable earlyprintk net.ifnames=0\"" }
  end
else
  describe file('/etc/default/grub.d/50-cloudimg-settings.cfg') do
    it { should contain "GRUB_CMDLINE_LINUX_DEFAULT=\"tsc=reliable earlyprintk\"" }
  end
end

