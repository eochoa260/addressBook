#
# Cookbook Name:: tomcat
# Default Attributes
#
# Copyright 2015, eochoa260
#
# All rights reserved - Do Not Redistribute
#

default['tomcat']['base']['path'] = '/opt/tomcat'
default['tomcat']['install']['path'] = "#{node['tomcat']['base']['path']}/apache-tomcat-7.0.65"
default['tomcat']['install']['tar'] = 'apache-tomcat-7.0.65.tar'
default['tomcat']['tar']['url'] = "https://s3-us-west-2.amazonaws.com/artifacts-eochoa260/#{node['tomcat']['install']['tar']}"


default['tomcat']['java']['install']['path'] = "#{node['tomcat']['base']['path']}/jre1.7.0_79"
default['tomcat']['java']['install']['tar'] = 'jre-7u79-linux-i586.tar'
default['tomcat']['java']['tar']['url'] = "https://s3-us-west-2.amazonaws.com/artifacts-eochoa260/#{node['tomcat']['java']['install']['tar']}"


default['tomcat']['dependencies'] = {
	"mysql-connector-java" => {
		path: '/usr/share/java'
	},
	"ld-linux.so.2" => {
		path: '/lib'
	}
}
