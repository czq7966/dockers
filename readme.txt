this is the jenkins war docker file
1、to build a image, run: docker image build -t jenkins_war .

2、to run a container, first create a folder like ~/data/jenkins_home with current user,  then run : docker run --privileged -it -p 8080:8080 --name jenkins_war -v ~/data/jenkins_home:/var/jenkins_home jenkins_war
	
