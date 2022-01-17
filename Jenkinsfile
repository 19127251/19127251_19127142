pipeline {
    environment{
        DOCKERHUB_CREDENTIALS = credentials('taquan17-dockerhub')
    }
    stages {
        stage('Build') {
            step{
                sh 'docker build -t aa .'
            }
        }
    }
}
