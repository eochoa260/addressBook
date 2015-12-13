#
# Cookbook Name:: tomcat
# Recipe:: deploy
#
# Copyright 2015, eochoa260
#
# All rights reserved - Do Not Redistribute
#

remote_file "#{node['tomcat']['install']['path']}/webapps/granny.war" do
	source node['tomcat']['granny']['artifact']['url']
	mode '0775'
end

ruby_block "set java home" do
	block do
		ENV['JAVA_HOME'] = node['tomcat']['java']['install']['path']
	end
end

execute "start tomcat" do
	action :run
	cwd "#{node['tomcat']['install']['path']}/bin"
	command "./startup.sh"
end
