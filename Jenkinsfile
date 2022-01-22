pipeline {
  agent any
  environment{
    DOCKERHUB_CREDENTIALS = credentials('dockerhub_id')  
  }
  stages {
      stage('Build') {
        steps {
          bat 'docker build -t demo_image .'
        }
      }
    
      stage('Push Image') {
        steps {                
          withDockerRegistry([ credentialsId: "dockerhub_id", url: "" ]){
            bat 'docker tag demo_image duchieuvn/demo_image'
            bat 'docker push duchieuvn/demo_image'
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
