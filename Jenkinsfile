pipeline {
    agent any
    stages {
        stage('Example') {
            steps {
                echo 'Hello World'
            }
        }
        stage('Front-end') {
            steps {
                sh 'docker.build("sha_store-"+"$BUILD_NUMBER")'
            }
        }
    }
}