pipeline {
    agent{
        dockerfile true
    }
    stages {
        stage('Build') {
            steps{
                sh 'sudo docker build -t aa .'
            }
        }
    }
}
