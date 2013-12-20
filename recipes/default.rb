#
# Cookbook Name:: ohai-private_ip
# Recipe:: ohai-private_ip
#

include_recipe 'chef-client::config' # update the chef-client configuration with the custom plugin path

ohai 'reload_ohai-private_ip' do
  action :reload
  plugin 'ohai-private_ip'
end

include_recipe 'ohai' # In conjunction with attribute setting, tells Chef to drop the plugin file where Ohai can find it.