pipeline {
    agent {
        docker { image 'node:22.14.0-alpine3.21' }
    }
    options {
        // Timeout counter starts AFTER agent is allocated
        timeout(time: 3, unit: 'MINUTES')
    }
    stages {
        stage('Example') {
            steps {
                echo 'Hello World'
            }
        }
        stage('Front-end') {
            steps {
                sh 'node --version'
            }
        }
    }
}