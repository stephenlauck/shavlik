#
# Cookbook:: shavlik
# Recipe:: server
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# Prereqs
# Visual C++ 2015 x64 (probably just runtime)
# SKIP - No reboot required; Shavlik installs this just fine
# windows_package node['shavlik']['vc_runtime']['name'] do
#   # checksum node['shavlik']['vc_runtime']['sha256sum']
#   source node['shavlik']['vc_runtime']['url']
#   installer_type :custom
#   options '/q'
# end

# WMF 4.0
include_recipe 'powershell::powershell4'

# .NET Framework 4.6.2
ms_dotnet_framework '4.6.2' do
  action :install
  include_patches true
  perform_reboot true
  require_support true
end

# SQL Server 2014 Express
# node.default['sql_server']['accept_eula'] = true
# node.default['sql_server']['version'] = '2014'
# node.default['sql_server']['server_sa_password'] = 'Cod3(an!' # Testing only; # should be encrypted in chef-vault
#
# include_recipe 'sql_server::server'
