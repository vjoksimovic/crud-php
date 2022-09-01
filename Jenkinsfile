pipeline {
    agent any
    tools {
     terraform 'terraform'
    }
    options {
        skipStagesAfterUnstable()
    }

    stages {

        stage('Pull Terraform infrastructure') {
                    steps {
                        script {
                            git 'https://github.com/vjoksimovic/jenkins-tf-lamp.git'
                        }
                    }
                }

        stage('Apply Terraform infrastructure') {
                    steps {
                        script {
                            sh 'terraform apply -var-file="secrets.tfvars"'
                        }
                    }
                }

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

            stage('Pull Ansible repository') {
                        steps {
                            script {
                                git 'https://github.com/vjoksimovic/ansible-projekat.git'
                            }
                        }
                    }

            stage('Start application with Ansible') {
                        steps {
                            script {
                                ansiblePlaybook credentialsId: 'ansible-jenkins', disableHostKeyChecking: true, installation: 'ansible', inventory: 'hosts.yml', playbook: 'main.yml'
                            }
                        }
                    }
            }
    }
