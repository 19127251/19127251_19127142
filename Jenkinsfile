pipeline {
  agent any
  environment{
    DOCKERHUB_CREDENTIALS = credentials('dockerhub_id')  
  }
  stages {
      stage('Build') {
        steps {
          bat 'docker build -t MMT_image:$BUILD_NUMBER .'
        }
      }
    
      stage('Push Image') {
        steps {                
          withDockerRegistry([ credentialsId: "dockerhub_id", url: "" ]){
            bat 'docker tag MMT_image:$BUILD_NUMBER duchieuvn/MMT_image:$BUILD_NUMBER'
            bat 'docker push duchieuvn/MMT_image:$BUILD_NUMBER'
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
