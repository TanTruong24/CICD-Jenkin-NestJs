pipeline {
    agent any

    stages {
        stage('Clone Code') {
            steps {
                git branch: 'main', credentialsId: 'github-credentials', url: 'https://github.com/TanTruong24/CICD-Jenkin-NestJs'
            }
        }

        stage('Install Dependencies') {
            steps {
                echo "Installing dependencies..."
                sh 'npm install'
            }
        }

        stage('Build') {
            steps {
                echo "Building the project..."
                sh 'npm run build'
            }
        }

        stage('Run Tests') {
            steps {
                echo "Running tests..."
                sh 'npm run test'
            }
        }

        stage('Deploy') {
            steps {
                echo "Deploying application..."
                sh './deploy.sh'  // Chạy script deploy
            }
        }
    }
        post {
        success {
            echo 'Deployment successful!'
        }
        failure {
            echo 'Deployment failed. Check logs for details.'
        }
    }
}
