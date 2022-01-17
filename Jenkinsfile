pipeline {
    agent any
    environment{
        DOCKERHUB_CREDENTIALS = credentials('taquan17-dockerhub')
    }
    stages {
        stage('Build') {
            steps{
                sh 'docker build -t aa .'
            }
        }
    }
}
