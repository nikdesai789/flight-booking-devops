pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git credentialsId: 'github-creds',
                    url: 'https://github.com/YOUR_USERNAME/YOUR_REPO.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t flight-booking-app .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run -d -p 8082:80 flight-booking-app'
            }
        }
    }
}
