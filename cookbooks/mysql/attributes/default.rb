#
# Cookbook Name:: mysql
# Default Attributes
#
# Copyright 2015, eochoa260
#
# All rights reserved - Do Not Redistribute
#

default['mysql']['sql']['file']['name'] = 'grannydb.sql'
default['mysql']['sql']['file']['url'] = "#{node['artifact']['base']['url']}/#{node['mysql']['sql']['file']['name']}"
default['mysql']['user'] = 'javauser'
default['mysql']['password'] = 'javadude'