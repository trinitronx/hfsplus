require 'spec_helper'

describe 'hfsplus::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  if ['debian', 'ubuntu'].include?(os[:family])
    packages = ['hfsplus', 'hfsutils', 'hfsprogs', 'gdisk']
  elsif os[:family] == 'redhat'
    packages = ['kmod-hfsplus', 'hfsplus-tools', 'kmod-hfs', 'gdisk']
  elsif os[:family] == 'fedora'
    packages = ['hfsplus-tools',  'gdisk']
  end

  packages.each do |pkg|
    describe package(pkg) do
      it { should be_installed }
    end
  end
end
