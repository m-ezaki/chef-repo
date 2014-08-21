#
# Cookbook Name:: yum_repo
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

yum_repository 'ius' do
 description 'ius community repository'
 mirrorlist 'http://dl.iuscommunity.org/pub/ius/stable/Redhat/6/x86_64/'
 gpgkey 'http://dl.iuscommunity.org/pub/ius/IUS-COMMUNITY-GPG-KEY'
 action :create
end
