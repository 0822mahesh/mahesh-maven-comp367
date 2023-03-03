pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                set +e
                sh 'mvn clean package'
            }
        }
    }
}
