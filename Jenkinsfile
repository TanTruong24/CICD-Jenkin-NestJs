pipeline {
    agent any

    stages {
        stage('Clone Code') {
            steps {
                git branch: 'main', credentialsId: 'github-credentials', url: 'https://github.com/user/repo.git'
            }
        }

        stage('Build') {
            steps {
                echo "Building project..."
                sh 'npm install'  // Lệnh build (thay đổi tùy stack)
            }
        }

        stage('Test') {
            steps {
                echo "Running tests..."
                sh 'npm test'  // Chạy test
            }
        }

        stage('Deploy') {
            steps {
                echo "Deploying application..."
                sh './deploy.sh'  // Chạy script deploy
            }
        }
    }
}
