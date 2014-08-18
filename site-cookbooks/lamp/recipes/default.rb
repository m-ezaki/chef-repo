#
# Cookbook Name:: lamp
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{gcc make nginx mysql}.each do |pkg|
 package pkg do
  action :install
 end
end
