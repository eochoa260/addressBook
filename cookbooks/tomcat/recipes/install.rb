#
# Cookbook Name:: tomcat
# Recipe:: install
#
# Copyright 2015, eochoa260
#
# All rights reserved - Do Not Redistribute
#

directory node['tomcat']['base']['path'] do
	action :create
	mode '0755'
end

remote_file "#{node['tomcat']['base']['path']}/#{node['tomcat']['java']['install']['tar']}" do
	source node['tomcat']['java']['tar']['url']
	mode '0775'
end

execute "untar java binary" do
	action :run
	cwd node['tomcat']['base']['path']
	command "tar xvf #{node['tomcat']['java']['install']['tar']}"
	not_if{Dir.exist?(node['tomcat']['java']['install']['path'])}
end

remote_file "#{node['tomcat']['base']['path']}/#{node['tomcat']['install']['tar']}" do
	source node['tomcat']['tar']['url']
	mode '0775'
end

execute "untar #{node['tomcat']['install']['tar']}" do
	action :run
	cwd node['tomcat']['base']['path']
	command "tar xvf #{node['tomcat']['install']['tar']}"
	not_if{Dir.exist?(node['tomcat']['install']['path'])}
end