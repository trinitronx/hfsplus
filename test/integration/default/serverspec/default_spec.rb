require 'spec_helper'

describe 'hfsplus::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  packages = ['hfsplus', 'hfsutils', 'hfsprogs', 'gdisk']

  [
    'hfsplus',
    'hfsutils',
    'hfsprogs',
    'gdisk'
  ].each do |pkg|
    describe package(pkg) do
      it { should be_installed }
    end
  end
end
