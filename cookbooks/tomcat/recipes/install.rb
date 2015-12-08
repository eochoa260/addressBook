directory '/opt/tomcat/' do
	action :create
	owner 'vagrant'
	group 'vagrant'
	mode '0755'
end

remote_file "/opt/tomcat/jre-7u79-linux-i586.tar" do
	source 'https://s3-us-west-2.amazonaws.com/artifacts-eochoa260/jre-7u79-linux-i586.tar'
	owner 'vagrant'
	group 'vagrant'
	mode '0775'
end

execute "untar java binary" do
	action :run
	user 'vagrant'
	group 'vagrant'
	cwd '/opt/tomcat'
	command "tar xvf jre-7u79-linux-i586.tar"
	not_if{Dir.exist?('/opt/tomcat/jre1.7.0_79')}
end

remote_file "/opt/tomcat/apache-tomcat-7.0.65.tar" do
	source 'https://s3-us-west-2.amazonaws.com/artifacts-eochoa260/apache-tomcat-7.0.65.tar'
	owner 'vagrant'
	group 'vagrant'
	mode '0775'
end

execute "untar apache-tomcat-7.0.65.tar" do
	action :run
	user 'vagrant'
	group 'vagrant'
	cwd '/opt/tomcat'
	command "tar xvf apache-tomcat-7.0.65.tar"
	not_if{Dir.exist?('/opt/tomcat/apache-tomcat-7.0.65')}
end