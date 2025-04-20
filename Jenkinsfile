pipeline {
    agent any
    stages {
       
        stage('Push Docker image'){
            steps {
                script{
                    withCredentials([usernamePassword(credentialsId: 'e9176601-8f14-42f4-94cb-76bd90d1cd5f', passwordVariable: 'docker-hub-pass', usernameVariable: 'docker-hub')]) {
            node{
                checkout scm
                def customImage = docker.build("sha_store-"+"$BUILD_NUMBER")
                customImage.push()
            }
                }
                }
            }
        }
    }
}