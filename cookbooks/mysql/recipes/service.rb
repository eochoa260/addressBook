service "mysqld" do
	action :nothing
	supports :status => true, :start => true, :stop => true, :restart => true
end