pipeline {
    
   agent { 
        dockerfile {
                filename 'Dockerfile'
                args '--name fubuntu --user root -v /var/run/docker.sock:/var/run/docker.sock'

        }
   
   }     
    stages {
         stage ('Make Debian') {
            steps { 
                sh 'cd gokay/DEBIAN && echo "Package: hello" > control && echo  "Version : 1.0 " >> control && echo "Architecture : amd64" >> control && echo "Maintainer: Gokay " >> control && echo "Description: Test" >> control'
                sh 'g++ Hello.cpp && mv a.out hello'
                sh 'cp hello gokay/usr/bin/'
                sh 'dpkg-deb --build gokay'
                sh 'apt install  ./gokay.deb'
                sh 'hello'
            }
         }

         stage ('docker build') {
            steps {
                sh 'apt install -y docker.io'
                sh 'docker ps'
            }
            }

            stage ('push image') {

                steps {
                    sh 'docker login -u gokayturhanoglu --password dckr_pat_8U8CbFW1BjagKmufKUGal-19jj8 '
                    sh 'docker commit fubuntu gokayturhanoglu/jenkinsdeneme'
                    sh 'docker push gokayturhanoglu/jenkinsdeneme'
                }
            }
         }








    }

