execute 'wait for jenkins to restart' do
	command "service jenkins restart && sleep 10"
end
