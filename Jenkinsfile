pipeline {
    agent any
    stages {
       
        stage('Push Docker image'){
            steps {
                script{
withDockerRegistry(credentialsId: 'e9176601-8f14-42f4-94cb-76bd90d1cd5f', url: 'https://registry.hub.docker.com') {
            node{
                checkout scm
                def customImage = docker.build("sachinsha96/shastore",".")
                customImage.push()
                }
                }
                }
            }
        }
    }
}