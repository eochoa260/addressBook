execute "Install mysql-connector-java" do
	action :run
	command "yum -y install mysql-connector-java"
	not_if{Dir.exist?('/usr/share/java/mysql-connector-java.jar')}
end

execute "Install ld-linux.so.2" do
	action :run
	command "yum -y install /lib/ld-linux.so.2"
	not_if{Dir.exist?('/lib/ld-linux.so.2')}
end

execute "copy mysql-connector-java.jar to tomcat lib" do
	action :run
	cwd '/opt/tomcat/apache-tomcat-7.0.65/lib'
	command "cp /usr/share/java/mysql-connector-java.jar ."
	not_if{Dir.exist?('/opt/tomcat/apache-tomcat-7.0.65/mysql-connector-java.jar')}
end

