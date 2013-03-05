package 'libfontconfig'

script "install phantom js #{node[:phantomjs][:version]}" do
  interpreter "bash"
  user "root"
  cwd "/home/vagrant"
  not_if { File.exists?("/usr/local/bin/phantomjs") }
  code <<-EOH
  wget http://phantomjs.googlecode.com/files/phantomjs-#{node[:phantomjs][:version]}-linux-x86_64-dynamic.tar.bz2
  tar xvjf phantomjs-#{node[:phantomjs][:version]}-linux-x86_64-dynamic.tar.bz2 -C /usr/local
  ln -s /usr/local/phantomjs-#{node[:phantomjs][:version]}-linux-x86_64-dynamic/bin/phantomjs /usr/local/bin/phantomjs
  EOH
end