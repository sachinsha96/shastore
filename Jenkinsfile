pipeline {
    agent any
    stages {
       
        stage('Push Docker image'){
            steps {
                script{
                    withRegistry('https://registry.hub.docker.com', 'e9176601-8f14-42f4-94cb-76bd90d1cd5f'){
            node{
                checkout scm
                def customImage = docker.build("shastore/sha",".")
                customImage.push()
                }
                }
                }
            }
        }
    }
}