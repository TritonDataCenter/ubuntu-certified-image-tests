require 'spec_helper'

describe package('acpid') do
  it { should be_installed }
end

describe package('login-duo') do
  it { should be_installed }
end

describe package('libduo3') do
  it { should be_installed }
end

describe package('vim') do
  it { should be_installed }
end

describe package('curl') do
  it { should be_installed }
end

describe package('wget') do
  it { should be_installed }
end
