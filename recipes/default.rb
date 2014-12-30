#Install environment dependences
apt_package "python-software-properties" do
  action :install
end

#Install Gradle
execute "add-apt-repository" do
  command "add-apt-repository ppa:cwchien/gradle"
end
execute "apt-get update" do 
  command "apt-get update" 
end
execute "apt-get clean" do 
  command "apt-get clean" 
end
execute "install gradle" do
  command "apt-get -y install gradle"
end