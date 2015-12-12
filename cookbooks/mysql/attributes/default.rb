#
# Cookbook Name:: mysql
# Default Attributes
#
# Copyright 2015, eochoa260
#
# All rights reserved - Do Not Redistribute
#

default['mysql']['sql']['file']['name'] = 'grannydb.sql'
default['mysql']['sql']['file']['url'] = "https://s3-us-west-2.amazonaws.com/artifacts-eochoa260/#{node['mysql']['sql']['file']['name']}"
default['mysql']['user'] = 'javauser'
default['mysql']['password'] = 'javadude'