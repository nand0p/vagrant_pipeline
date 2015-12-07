seedxml = '/vagrant/jenkins/jenkins.seed.xml'

jenkins_job 'seed' do
	action :create
	config seedxml
end

