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
               sh 'scp /home/workspace/.jenkins/workspace/pp_text_master/target/abcd.war root@172.17.0.1 root@172.17.0.2:/home/dev_data/apache-tomcat-9.0.55/webapps'   sshpass -p '6472'
            }
	}
    }
 }
    

