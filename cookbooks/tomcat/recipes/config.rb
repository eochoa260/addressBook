template "/opt/tomcat/apache-tomcat-7.0.65/conf/context.xml" do
	source 'context.xml.erb'
	mode '0750'
end

template "/opt/tomcat/apache-tomcat-7.0.65/conf/server.xml" do
	source 'server.xml.erb'
	mode '0750'
end
