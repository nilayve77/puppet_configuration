red=$'\e[1;31m'
grn=$'\e[1;32m'
yel=$'\e[1;33m'
blu=$'\e[1;34m'
mag=$'\e[1;35m'
cyn=$'\e[1;36m'
end=$'\e[0m' 
/bin/echo "------------------------"
printf "%s\n" "${red}Deploying configuration${end}"
/bin/echo "------------------------"
puppet agent -t &&
/bin/echo "------------------------"
printf "%s\n" "${red}Deployment Completed${end}"
/bin/echo "------------------------"
export RUBYLIB=/root/lib/ruby 
printf "%s\n" "${grn}--------------------------------------------------------${end}"
printf "%s\n" "${red}Java :${end}"
java -version
printf "%s\n" "${grn}--------------------------------------------------------${end}"
printf "%s\n" "${red}Git :${end}"
git --version 
printf "%s\n" "${grn}--------------------------------------------------------${end}"
printf "%s\n" "${red}Maven :${end}"
mvn -version 
printf "%s\n" "${grn}--------------------------------------------------------${end}"
printf "%s\n" "${red}Users :${end}"
cat /etc/passwd | grep jira
cat /etc/passwd | grep jenkins 
cat /etc/passwd | grep jfrog 
printf "%s\n" "${grn}--------------------------------------------------------${end}"
printf "%s\n" "${red}Jfrog :${end}"
ps aux | grep artifactory | grep logging.properties
printf "%s\n" "${grn}--------------------------------------------------------${end}"
printf "%s\n" "${red}NTP :${end}"
service ntpd status
printf "%s\n" "${grn}--------------------------------------------------------${end}"
printf "%s\n" "${red}Tomcat :${end}"
ps aux | grep apache-tomcat
printf "%s\n" "${grn}--------------------------------------------------------${end}"
printf "%s\n" "${red}Jenkins :${end}"
service jenkins status
printf "%s\n" "${grn}--------------------------------------------------------${end}"
source ~/.bashrc
