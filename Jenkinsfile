pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
            post {
                success {
                    archiveArtifacts artifacts: 'target/*.war', fingerprint: true
                }
                failure {
                    echo 'Build failed'
                }
            }
        }
        
        // add more stages as needed
    }
}

