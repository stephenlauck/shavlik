#
# Cookbook:: shavlik
# Recipe:: hosts
#
# Copyright:: 2017, The Authors, All Rights Reserved.

entries = { 'localhost' => '127.0.0.1',
            'chef' => '33.33.0.10',
            'shavlik' => '33.33.0.20',
            'unpatched' => '33.33.0.30'}

entries.each do |name, ip|
  hostsfile_entry ip.to_s do
    hostname name.to_s
    action :create
  end
end
