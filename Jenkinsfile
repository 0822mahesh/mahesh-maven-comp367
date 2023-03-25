pipeline {
    agent any
    
    stages {
        stage('check out'){
        steps {
                stage('check out'){
                      steps{
                          
                          git brach: 'main', url:'https://github.com/0822mahesh/mahesh-maven-comp367'
                      }
                      
                      }
            
        }
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
        stage('Deploy Docker Image'){
            steps{
                script{
                withCredentials([string(credentialsId: '0822mahesh', variable: 'dockerhub')]) {
                sh 'docker login -u 0822mahesh -p ${dockerhub}'
                            }
                    sh 'docker push 0822mahesh/my-app-1.0'
                
                }
            }
        
        }
       
    }
}
