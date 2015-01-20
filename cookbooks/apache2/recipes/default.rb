#
# Cookbook Name:: apache2
# Recipe:: default
#
# Copyright (C) 2015 
#
# 
#
package 'apache2'

service 'apache2' do
  action [:start, :enable]
end

template '/var/www/index.html' do
  source 'index.html.erb'
end