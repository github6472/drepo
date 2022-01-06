pipeline{
    agent any
    stages {
         stage( "code pull") {
            steps {
                git  'https://github.com/github6472/drepo.git'
                echo 'git pull successesful'
            }
        }
        stage ('code build') {
            steps {
                sh 'mvn install'
            }
        }
	stage ('code deploy') {
            steps {
		    sh 'pwd'
               sh ' sshpass -p "6472" scp target/abcd.war root@172.17.0.3:/home/dev_data/apache-tomcat-9.0.55/webapps'
            }
	}
    }
 }
    

