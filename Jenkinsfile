pipeline {
    agent any

    stages {

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t flight-booking-app .'
            }
        }

        stage('Stop Old Container') {
            steps {
                sh '''
                docker stop flight-booking || true
                docker rm flight-booking || true
                '''
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run -d --name flight-booking -p 8082:80 flight-booking-app'
            }
        }
    }
}
