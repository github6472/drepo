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
        }
        }
    

