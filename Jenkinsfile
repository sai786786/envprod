pipeline {
    agent {
    node {
      label 'master'
    }
}
    
    stages {
    
        stage('Test') {
                          

            steps {
               
                sh 'docker build -t saikiran786/ .'
                sh 'docker tag saikiran786/ravana saikiran786/ravana:$BUILD_ID'
                sh 'docker login -u="saikiran786" -p="9966786786"'
                sh 'docker push saikiran786/ravana:$BUILD_ID'
                sh 'docker push saikiran786/ravana:latest'
            }
        }
           stage('Test123') {  
        steps {
               sh 'ls'
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
                sh 'docker-compose up -d'
                
            }
            
    }
   }
}
