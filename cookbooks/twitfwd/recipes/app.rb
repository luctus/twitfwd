include_recipe 'twitfwd::base'

## Add github deploy key
directory "/home/#{node['user']}/.ssh" do
  mode 0700
  owner node['user']
  group node['user']
  action :create
  recursive true
end

# ssh-keygen -t rsa -C 'ops@firenxis.com'
# copy private key
#cookbook_file "/home/#{node['user']}/.ssh/id_rsa" do
#  source 'id_rsa'
#  mode '0600'
#  owner node['user']
#  group node['user']
#end

# copy public key
#cookbook_file "/home/#{node['user']}/.ssh/id_rsa.pub" do
#  source 'id_rsa.pub'
#  mode '0644'
#  owner node['user']
#  group node['user']
#end

# add github to known host
#cookbook_file "/home/#{node['user']}/.ssh/known_hosts" do
#  source 'known_hosts'
#  mode '0644'
#  owner node['user']
#  group node['user']
#end

## Rbenv
# install rbenv
rbenv_source "install rbenv for user #{node['user']}" do
  user node['user']
  action :install
end

# install ruby
rbenv_ruby "install ruby with rbenv for user #{node['user']}" do
  user node['user']
  version node['ruby']['version']
  action :install
end

# install bundler
rbenv_gem "install bundler with rbenv for user #{node['user']}" do
  user node['user']
  ruby_version node['ruby']['version']
  gem_name 'bundler'
  action :install
end

#include_recipe 'nginx'