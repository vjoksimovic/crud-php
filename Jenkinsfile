pipeline {
    agent any 
    options {
        skipStagesAfterUnstable()
    }
    stages {

        stage('Initialize) {
            def dockerHome = tool 'myDocker'
            env.PATH="${dockerHome}/bin:${env.PATH}"
        }

        stage('Clone repository') {
            steps {
                script {
                    checkout scm
                }
            }
        }

        stage('Build') {
            steps {
                script {
                    app = docker.build("crud-php")
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    docker.withRegistry('372462118821.dkr.ecr.eu-central-1.amazonaws.com/crud-php','ecr:eu-central-1:aws-credentials')
                    app.push("${env.BUILD_NUMBER}")
                    app.push("latest")
                }
            }
        }
    }
}