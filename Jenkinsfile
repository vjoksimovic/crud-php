pipeline {
    agent any
    options {
        skipStagesAfterUnstable()
    }

    stages {

        stage('Pull application repository') {
            steps {
                script {
                    checkout scm
                }
            }
        }

        stage('Build application repository') {
            steps {
                script {
                    app = docker.build("crud-php")
                }
            }
        }

        stage('Push application repository to ECR') {
            steps {
                script {
                    docker.withRegistry('https://372462118821.dkr.ecr.eu-central-1.amazonaws.com/crud-php','ecr:eu-central-1:aws-credentials') {
                        app.push("${env.BUILD_NUMBER}")
                        app.push("latest")
                    }
                }
            }
        }
    }
}
