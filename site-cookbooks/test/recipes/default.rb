#
# Cookbook Name:: test
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

template "/tmp/template_test.txt" do
 source "template_test.txt.erb"
 mode "0644"
end
