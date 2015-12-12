#
# Cookbook Name:: mysql
# Recipe:: create_db
#
# Copyright 2015, eochoa260
#
# All rights reserved - Do Not Redistribute
#

remote_file "/tmp/#{node['mysql']['sql']['file']['name']}" do
	source node['mysql']['sql']['file']['url']
	mode '0775'
end

execute "create db" do
	action :run
	cwd '/tmp'
	command "echo \"CREATE DATABASE grannydb\" | mysql -u root;mysql -u root grannydb < #{node['mysql']['sql']['file']['name']}"
	not_if{Dir.exist?('/var/lib/mysql/grannydb')}
	notifies :run, 'execute[create user]', :immediately
	notifies :run, 'execute[grant permissions]', :immediately
end
