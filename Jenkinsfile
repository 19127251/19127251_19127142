node('docker'){
    pipeline {
    agent{
        dockerfile true
    }
    environment{
        DOCKERHUB_CREDENTIALS = credentials('taquan17-dockerhub')
    }
    stages {
        stage('Build') {
            steps{
                script { 
                    dockerImage = docker.build registry + ":$BUILD_NUMBER" 
                }
            }
        }
    }
}
