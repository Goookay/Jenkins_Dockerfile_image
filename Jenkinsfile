pipeline {
    
   agent { 
        dockerfile {
                filename 'Dockerfile'
                args '-v /var/run/docker.sock:/var/run/docker.sock'

        }
   
   }     
    stages {
         stage ('Make Debian') {
            steps { 
                sh 'cd gokay/DEBIAN && echo "Package: hello" > control && echo  "Version : 1.0 " >> control && echo "Architecture : amd64" >> control && echo "Maintainer: Gokay " >> control && echo "Description: Test" >> control'
                sh 'g++ Hello.cpp && mv a.out hello'
                sh 'cp hello gokay/usr/bin/'
                sh 'dpkg-deb --build gokay'
                sh 'apt install --user root ./gokay.deb'
                sh 'hello'
            }
         }

         stage ('docker build') {
            steps {
                sh 'apt install docker.io'
                sh 'docker ps'
            }
            }
         }








    }

