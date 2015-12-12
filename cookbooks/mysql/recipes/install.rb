#
# Cookbook Name:: mysql
# Recipe:: create_db
#
# Copyright 2015, eochoa260
#
# All rights reserved - Do Not Redistribute
#

execute "Install MySQL" do
	action :run
	command "yum -y install mysql-server"
	not_if{Dir.exist?('/usr/bin/mysql')}
	notifies :start, 'service[mysqld]', :immediately
end

