pipeline {
    agent { label 'worker-node' }
    
    stages {
        stage("Code Clone") {
            steps {
                git url: "https://github.com/prasantabdev/node-todo-cicd.git", credentialsID: "git-creds", branch: "master"
            }
        }
        
        stage("Build") {
            steps {
                sh "docker build -t node-todo ."
            }
        }
        
        stage("Deploy") {
            steps {
                script {
                    // Ensure we're in the directory with docker-compose.yml, or provide the full path
                    sh "docker compose down && docker compose up --build -d"
                }
            }
        }
    }
}
