execute "Install MySQL" do
	action :run
	command "yum -y install mysql-server"
	not_if{Dir.exist?('/usr/bin/mysql')}
	notifies :start, 'service[mysqld]', :immediately
end

