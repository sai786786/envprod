pipeline {
    agent {
    node {
      label 'master'
    }
}
   
    
    stages {
         stage('Test123') {  
        steps {
               sh 'ls'
               sh 'npm install'
        }
           }
    
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
                /*sh 'docker stop vaar1'*/
                sh 'docker rm vaar1'
                sh 'ls -la'
                sh 'docker run -i -d --name vaar1 -p 3386:3000 saikiran786/ravana NODE_ENV="prod" node app.js'
                /*sh 'docker-compose up -d'*/
                
            }
            
    }
   }
}
