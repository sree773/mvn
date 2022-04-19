pipeline {
    
    agent {
        agent-node
    }
    environment{
        PASS = credentials('secret')
    }
    stages {
        stage('Build') {
            steps {
                sh '''
                    ./jenkins/build/mvn.sh mvn -B -DkskipTests clean package
                    ./jenkins/build/build.sh
                
                    '''
            }
        }
        stage('Test') {
            steps {
                sh './jenkins/test/test.sh mvn test'
            }
        }
        stage('Push') {
            steps {
                sh './jenkins/push/push.sh'
            }
        }
        stage('Deploy') {
            steps {
                sh './jenkins/deploy/deploy.sh'
            }
        }
    }
}
