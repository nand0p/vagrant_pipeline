template "/etc/pipeline" do
    source "pipeline.erb"
    owner "root"
    group "root"
    mode 0644
    variables :pipeline => node['vagrant_jenkins_wrapper']['pipeline']
end
template "/etc/sysconfig/jenkins" do
    source "sysconfig_jenkins.erb"
    owner "root"
    group "root"
    mode 0644
    variables({
      :jenkins_port => node['vagrant_jenkins_wrapper']['jenkins_port'],
      :jenkins_user => node['vagrant_jenkins_wrapper']['jenkins_user'],
      :jenkins_home => node['vagrant_jenkins_wrapper']['jenkins_home']
    })
end
