pipeline {
    agent any
    stages{
	     stage{
		 sh ''' 
		if [ "$(docker ps -aq -f name=ng-box)" ]; then
		docker stop ng-box
		docker rm ng-box
		fi

		# Check if image 'demo-img' exists
		if [ "$(docker images -q -f reference=demo-img)" ]; then
		docker rmi demo-img
		fi
		 '''
		  }
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
                 docker run --name ng-box -p 8081:80 -d demo-img
                '''
            }
        }
    }

   } 
