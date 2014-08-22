#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
log "nginx installation start !!"

remote_file "/tmp/nginx-release-centos-6-0.el6.ngx.noarch.rpm" do
 source "http://nginx.org/packages/centos/6/noarch/RPMS/nginx-release-centos-6-0.el6.ngx.noarch.rpm"
end 

package "nginx-release-centos" do
 action :install
 source "/tmp/nginx-release-centos-6-0.el6.ngx.noarch.rpm"
 provider Chef::Provider::Package::Rpm
end

package "nginx" do
  action :install
  version "1.6.1-1.el6.ngx"
end

service "nginx" do
 action [:nothing]
end
