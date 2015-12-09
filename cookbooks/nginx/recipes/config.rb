template "/etc/nginx/nginx.conf" do
	source 'nginx.conf.erb'
	mode '0750'
end

execute "start nginx" do
	action :run
	command "nginx"
end