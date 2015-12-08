execute "create user" do
	action :nothing
	command "echo \"CREATE USER javauser@localhost IDENTIFIED BY 'javadude'\" | mysql -u root"
end

execute "grant permissions" do
	action :nothing
	command "echo \"GRANT ALL ON grannydb.* TO javauser@localhost\" | mysql -u root"
end