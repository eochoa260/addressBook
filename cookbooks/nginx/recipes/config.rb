template "/etc/nginx/nginx.conf" do
	source 'nginx.conf.erb'
	mode '0750'
	notifies :restart, 'service[nginx]', :immediately
end

service "nginx" do
	supports :status => true, :start => true, :stop => true, :restart => true
	action :nothing
end