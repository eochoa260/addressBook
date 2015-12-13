execute "Install Nginx" do
	action :run
	command "yum -y install nginx"
	not_if{Dir.exist?('/usr/sbin/nginx')}
	notifies :start, 'service[nginx]', :immediately
end