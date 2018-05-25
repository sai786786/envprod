pipeline {
    agent {
    node {
      label 'master'
    }
}
    stage('Test123') {  
        steps {
               sh 'ls'
               sh 'npm install'
        }
           }
    
    stages {
    
        stage('Test') {
                          

            steps {
               
                sh 'docker build -t saikiran786/ravana .'
                sh 'docker tag saikiran786/ravana saikiran786/ravana:$BUILD_ID'
                sh 'docker login -u="saikiran786" -p="9966786786"'
                sh 'docker push saikiran786/ravana:$BUILD_ID'
                sh 'docker push saikiran786/ravana:latest'
            }
        }
           
        stage('working_group') {  
        steps {
               sh 'echo "Yes tis Script is Working"'
        }
           }
        
        stage('Test on Windows') {
            agent {
                label 'new_hyd_21_05_18'
            }
            steps {
                sh 'ls -la'
                sh 'docker run -i -d --name var -p 3385:3000 saikiran786/ravana node app.js'
                /*sh 'docker-compose up -d'*/
                
            }
            
    }
   }
}
