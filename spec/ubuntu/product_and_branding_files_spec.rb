require 'spec_helper'

# Product file that lists image and version info
describe file('/etc/product') do
	it { should be_file }
	it { should contain "Name: Joyent Instance" }
	it { should contain "Image: #{attr[:name]} #{attr[:version]}" }
	it { should contain "Documentation: #{attr[:doc_url]}" }
end

# Version info used for MOTD
#describe file('/etc/cloud/build.info') do
#  it { should be_file }
#	it { should contain "serial: #{attr[:version]}" }
#end
