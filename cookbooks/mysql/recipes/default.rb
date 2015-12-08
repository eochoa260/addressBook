#
# Cookbook Name:: mysql
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


include_recipe 'mysql::install'
include_recipe 'mysql::service'
include_recipe 'mysql::create_db'
include_recipe 'mysql::user'