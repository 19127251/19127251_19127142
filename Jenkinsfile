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
                sh 'apt-get install docker-ce docker-ce-cli containerd.io'
                sh 'docker build -t aa .'
            }
        }
    }
}
