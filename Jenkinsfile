pipeline {
    agent any
    stages {
       
        stage('Push Docker image'){
            steps {
            node{
                checkout scm
                def customImage = docker.build("sha_store-"+"$BUILD_NUMBER")
                customImage.push()
            }
            }
        }
    }
}