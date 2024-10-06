pipeline {
    agent any
    stages{
        stage('Image Build') {
            steps {
               sh '''
                 docker build -t demo-img .
                '''
            }
        }
		stage('Create Container') {
            steps {
               sh '''
                 docker run -p 8081:80 -d nginx
                '''
            }
        }
		stage('Stop Container') {
            steps {
               sh '''
                 docker stop $(docker ps -qa)
				 docker conatiner prune
				 docker rmi demo-img
                '''
            }
        }
    }

   } 
