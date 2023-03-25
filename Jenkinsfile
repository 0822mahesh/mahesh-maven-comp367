pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package'
                echo "good afternoon Mahesh"
            }
            
            
        }
        stage('Build Docker Image') {
            steps {
                script {
                  sh 'docker build -t 0822mahesh/my-app-1.0 .'
                }
            }
        }
       
    }
}

