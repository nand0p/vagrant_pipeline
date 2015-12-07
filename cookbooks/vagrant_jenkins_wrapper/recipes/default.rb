template "/etc/pipeline" do
    source "pipeline.erb"
    owner "root"
    group "root"
    mode 0644
    variables :pipeline => node['vagrant_jenkins_wrapper']['pipeline']
end
