directory "/var/lib/jenkins/.ssh" do
  owner 'jenkins'
  mode '0700'
  action :create
end
template "/var/lib/jenkins/.ssh/config" do
    source "ssh_config.erb"
    mode '0400'
    owner 'jenkins'
    action :create
end

