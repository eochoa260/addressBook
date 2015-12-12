#
# Cookbook Name:: mysql
# Recipe:: default
#
# Copyright 2015, eochoa260
#
# All rights reserved - Do Not Redistribute
#


include_recipe 'mysql::install'
include_recipe 'mysql::service'
include_recipe 'mysql::create_db'
include_recipe 'mysql::user'