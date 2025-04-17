pipeline {
    agent any
    options {
        // Timeout counter starts AFTER agent is allocated
        timeout(time: 1, unit: 'SECONDS')
    }
    stages {
        stage('Example') {
            steps {
                echo 'Hello World'
            }
        }
        stage('Front-end') {
            agent {
                docker { image 'node:22.14.0-alpine3.21' }
            }
            steps {
                sh 'node --version'
            }
        }
    }
}