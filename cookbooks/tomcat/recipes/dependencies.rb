#
# Cookbook Name:: tomcat
# Recipe:: dependencies
#
# Copyright 2015, eochoa260
#
# All rights reserved - Do Not Redistribute
#

# execute "Install mysql-connector-java" do
# 	action :run
# 	command "yum -y install mysql-connector-java"
# 	not_if{Dir.exist?('/usr/share/java/mysql-connector-java.jar')}
# end

# execute "Install ld-linux.so.2" do
# 	action :run
# 	command "yum -y install /lib/ld-linux.so.2"
# 	not_if{Dir.exist?('/lib/ld-linux.so.2')}
# end

node['tomcat']['dependencies'].each do |dependency, path|
	execute "Install #{dependency}" do
		action :run
		command "yum -y install #{dependency}"
		not_if{Dir.exist?("#{path}/#{dependency}")}
	end
end

execute "copy mysql-connector-java.jar to tomcat lib" do
	action :run
	cwd "#{node['tomcat']['install']['path']}/lib"
	command "cp /usr/share/java/mysql-connector-java.jar ."
	not_if{Dir.exist?("#{node['tomcat']['install']['path']}/mysql-connector-java.jar")}
end

