case node["platform_family"]
when "debian"
  default['hfsplus']['packages'] = ['hfsplus', 'hfsutils', 'hfsprogs', 'gdisk']
when "rhel"
  default['hfsplus']['packages'] = ['kmod-hfsplus', 'hfsplus-tools', 'kmod-hfs', 'gdisk']
when "fedora"
  default['hfsplus']['packages'] = ['hfsplus-tools',  'gdisk'] # hfsplusutils RPM conflicts with hfsplus-tools, so only install one
end
