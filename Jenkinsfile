pipeline {
  agent any
  environment{
    DOCKERHUB_CREDENTIALS = credentials('dockerhub_id')  
  }
  stages {
      stage('Build') {
        steps {
          bat 'docker build -t MMT/image:$BUILD_NUMBER .'
        }
      }
    
      stage('Push Image') {
        steps {                
          withDockerRegistry([ credentialsId: "dockerhub_id", url: "" ]){
            bat 'docker tag MMT/image:$BUILD_NUMBER duchieuvn/MMT/image:$BUILD_NUMBER'
            bat 'docker push duchieuvn/MMT/image:$BUILD_NUMBER'
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
