pipeline{
    agent any
    stages {
         stage( 'code pull') {
            steps {
                git branch :'nice-page-code' ,url:'https://github.com/github6472/crepo.git'
                echo 'git pull successesful'
            }
        }
        stage ('code build') {
            steps {
                sh 'mvn install'
            }
        }
        stage ('script billd') {
            steps {
                sh ' ./new_script.sh '
            }
        }
    }
}

