pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                
               
               sh ''''
 set +e
 'mvn clean package'
 '''
            }
        }
    }
}
