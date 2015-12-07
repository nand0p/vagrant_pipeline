directory "/var/lib/jenkins/.ssh" do
  owner 'jenkins'
  mode '0700'
  action :create
end
template "/var/lib/jenkins/.ssh/config" do
    source "/home/vagrant/sync/files/ssh_config"
    mode '0400'
    owner 'jenkins'
    action :create
end

