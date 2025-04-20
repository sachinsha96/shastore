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
                sh 'docker compose up'
            }
        }
    }
}