#
# Cookbook Name:: mysql
# Recipe:: user
#
# Copyright 2015, eochoa260
#
# All rights reserved - Do Not Redistribute
#

execute "create user" do
	action :nothing
	command "echo \"CREATE USER #{node['mysql']['user']}@localhost IDENTIFIED BY '#{node['mysql']['password']}'\" | mysql -u root"
end

execute "grant permissions" do
	action :nothing
	command "echo \"GRANT ALL ON grannydb.* TO #{node['mysql']['user']}@localhost\" | mysql -u root"
end