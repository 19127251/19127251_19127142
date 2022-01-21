pipeline {
  agent any
  environment{
    DOCKERHUB_CREDENTIALS = credentials('dockerhub_id')  
  }
  stages {
      stage('Build') {
        steps {
          bat 'docker build -t mmt_image .'
        }
      }
    
      stage('Push Image') {
        steps {                
          withDockerRegistry([ credentialsId: "dockerhub_id", url: "" ]){
            bat 'docker tag mmt_image duchieuvn/mmt_image'
            bat 'docker push duchieuvn/mmt_image'
          }
        }
      }
  }
  
  post {
    always{
      bat 'docker logout' 
    }
  }
}
