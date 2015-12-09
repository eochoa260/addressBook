remote_file "/opt/tomcat/apache-tomcat-7.0.65/webapps/granny.war" do
	source 'https://s3-us-west-2.amazonaws.com/artifacts-eochoa260/granny.war'
	mode '0775'
end

ruby_block "set java home" do
	block do
		ENV['JAVA_HOME'] = '/opt/tomcat/jre1.7.0_79'
	end
end

execute "start tomcat" do
	action :run
	cwd '/opt/tomcat/apache-tomcat-7.0.65/bin'
	command "./startup.sh"
end
