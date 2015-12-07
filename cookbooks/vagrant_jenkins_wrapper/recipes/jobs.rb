seedxml = '/home/vagrant/sync/files/seed.xml'

jenkins_job 'seed' do
	action :create
	config seedxml
end

