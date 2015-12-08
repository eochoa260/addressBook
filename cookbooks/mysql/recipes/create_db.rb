remote_file "/tmp/grannydb.sql" do
	source 'https://s3-us-west-2.amazonaws.com/artifacts-eochoa260/grannydb.sql'
	owner 'vagrant'
	group 'vagrant'
	mode '0775'
end

execute "create db" do
	action :run
	cwd '/tmp'
	command "echo \"CREATE DATABASE grannydb\" | mysql -u root;mysql -u root grannydb < grannydb.sql"
	not_if{Dir.exist?('/var/lib/mysql/grannydb')}
	notifies :run, 'execute[create user]', :immediately
	notifies :run, 'execute[grant permissions]', :immediately
end
