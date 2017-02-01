#
# Cookbook:: shavlik
# Recipe:: server
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# node.default['powershell']['installation_reboot_mode'] = 'delayed_reboot'

# include_recipe 'powershell::powershell5'

node.default['sql_server']['accept_eula'] = true
node.default['sql_server']['version'] = '2014'
node.default['sql_server']['server_sa_password'] = 'Cod3(an!' # Testing only; should be encrypted in chef-vault

# include_recipe 'sql_server::server'
