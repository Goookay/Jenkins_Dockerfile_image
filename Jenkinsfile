pipeline {
    parameters {
        string (name: 'VERSION', defaultValue: '${BUILD_NUMBER}', description: 'Version of the Application')
    }
    
    agent { 
        dockerfile {
            filename 'Dockerfile'
            args '--name fubuntu --user root -v /var/run/docker.sock:/var/run/docker.sock'
        }
    }

    environment {
        DOCKERHUB_CREDENTIALS = credentials("gokay-docker") 
    }

    stages {
        stage ('Make Debian') {
            steps { 
                sh "make build"
                sh "make test_deb"
            }
        }
        stage ('docker ps') {
            steps {
                sh 'docker ps'
            }
        }
        stage ('push image') {
            steps {
                sh 'docker login -u gokayturhanoglu --password $DOCKERHUB_CREDENTIALS_PSW'
                sh 'docker commit fubuntu gokayturhanoglu/jenkinsdeneme'
                sh 'docker push gokayturhanoglu/jenkinsdeneme'
            }
        }
    }
}

