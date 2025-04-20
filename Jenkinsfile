pipeline {
    agent any
    stages {
       
        // stage('Push Docker image'){
        //     steps {
        //         script{
        //         withCredentials([usernamePassword(credentialsId: 'e9176601-8f14-42f4-94cb-76bd90d1cd5f', passwordVariable: 'docpassword', usernameVariable: 'sha-docker')]) {    
        //         sh 'docker login -u sachinsha96 -p ${docpassword}'            
        //         node{
        //         checkout scm
        //         def customImage = docker.build("sachinsha96/shastore",".")
        //         customImage.push()
        //         }
        //         }
        //         }
        //     }
            
        // }
         stage('Pull Docker image and run the app'){
            steps {
                script{
                withCredentials([usernamePassword(credentialsId: 'e9176601-8f14-42f4-94cb-76bd90d1cd5f', passwordVariable: 'docpassword', usernameVariable: 'sha-docker')]) {    
                sh 'docker login -u sachinsha96 -p ${docpassword}'            
                sh 'docker pull sachinsha96/shastore'
                }
                }
            }
            
        }
    }
}