pipeline {
    agent any
    stages {
        stage('Step 1') {
            steps {
                sh '''
                if [ "$(docker ps -aq -f name=ng-box)" ]; then
                    docker stop ng-box ng-box2
                    docker rm ng-box ng-box2
                fi

                # Check if image 'demo-img' exists
                if [ "$(docker images -q -f reference=demo-img)" ]; then
                    docker rmi demo-img
                fi
                '''
            }
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
				docker run --name ng-box2 -p 8082:80 -d demo-img
                '''
            }
        }
    }
} 