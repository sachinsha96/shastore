pipeline {
    agent any
    stages {
        stage('Example') {
            steps {
                sh 'org.jenkinsci.plugins.durabletask.BourneShellScript.LAUNCH_DIAGNOSTICS=true'
            }
        }
        stage('Front-end') {
            agent {
                docker { image 'node:22.14.0-alpine3.21' }
            }
            steps {
                sh 'docker --versions'
            }
        }
    }
}