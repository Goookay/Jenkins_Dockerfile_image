pipeline {
    
   agent { 
        dockerfile {
                filename 'Dockerfile'
                args '-v /var/run/docker.sock:/var/run/docker.sock'
                                
        }
   
   }     
    stages {



         stage ('Make Directory and Debian') {
            steps {
                sh 'mkdir gokay'
                sh 'cd gokay && mkdir DEBIAN && mkdir usr'
                sh 'cd gokay && cd usr && mkdir bin '
            }

         }
         stage ('Make Debian') {
            steps { 
                sh 'cd gokay/DEBIAN && echo "Package: hello" > control && echo  "Version : 1.0 " >> control && echo "Architecture : amd64" >> control && echo "Maintainer: Gokay " >> control && echo "Description: Test" >> control'
                sh 'g++ Hello.cpp && mv a.out hello'
                sh 'cp hello gokay/usr/bin/'
                sh 'dpkg-deb --build gokay'
                sh 'apt  install -y ./gokay.deb'
                sh 'hello'
            }

         }








    }


}
