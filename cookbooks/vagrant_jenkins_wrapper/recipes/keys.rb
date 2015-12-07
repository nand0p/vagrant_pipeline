directory "/var/lib/jenkins/.ssh" do
  owner 'jenkins'
  mode '0700'
  action :create
end
execute "generate ssh skys for jenkins" do
  user 'jenkins'
  creates '/var/lib/jenkins/.ssh/id_rsa.pub'
  command 'ssh-keygen -t rsa -q -f /var/lib/jenkins/.ssh/id_rsa -P ""'
end
template "/var/lib/jenkins/.ssh/config" do
    source 'ssh_config.erb'
    mode '0400'
    owner 'jenkins'
    action :create
end
