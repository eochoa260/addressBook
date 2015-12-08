#
# Cookbook Name:: tomcat
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'tomcat::install'
include_recipe 'tomcat::dependencies'
include_recipe 'tomcat::config'
include_recipe 'tomcat::deploy'
