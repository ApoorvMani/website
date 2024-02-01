pipeline {
    agent any

    stages {
        stage('Build and Deploy') {
            steps {
                script {
                    docker.withRegistry('https://your-container-registry', 'your-registry-credentials') {
                        def customImage = docker.build('your-image-name')
                        customImage.push('latest')
                    }
                }
            }
        }
    }
}
