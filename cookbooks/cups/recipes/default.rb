#
# Cookbook Name:: cups
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "cups" do
	action :install
end

service "cups" do
	action [:enable, :start]
end

execute "usermod -a -G lpadmin pi"

cookbook_file "/etc/cups/cupsd.conf" do
	source "cupsd.conf"
	notifies :restart, "service[cups]"
end