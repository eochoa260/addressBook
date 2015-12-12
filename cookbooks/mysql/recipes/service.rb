#
# Cookbook Name:: mysql
# Recipe:: service
#
# Copyright 2015, eochoa260
#
# All rights reserved - Do Not Redistribute
#

service "mysqld" do
	action :nothing
	supports :status => true, :start => true, :stop => true, :restart => true
end