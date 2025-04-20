pipeline {
    agent any
    stages {
        stage('Build docker file') {
            steps {
                script{
                    docker.build("sha_store-"+"$BUILD_NUMBER")
                } 
            }
        }
        stage('Push Docker image'){
            steps{
                script{
                    docker.Image.push('latest')
                }
            }
        }
    }
}