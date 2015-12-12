#
# Cookbook Name:: tomcat
# Recipe:: config
#
# Copyright 2015, eochoa260
#
# All rights reserved - Do Not Redistribute
#

template "#{node['tomcat']['install']['path']}/conf/context.xml" do
	source 'context.xml.erb'
	mode '0750'
end

template "#{node['tomcat']['install']['path']}/conf/server.xml" do
	source 'server.xml.erb'
	mode '0750'
end
