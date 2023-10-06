pipeline {
    agent any

    stages {
        stage('Build Server Jenkins-Agent') {
            steps {
                script {
                    dir('/var/lib/jenkins/workspace/Terraform-GCP/jenkins-agent') {
                        sh 'ls' 
                        sh 'sudo terraform init'
                        sh 'sudo terraform plan'
                        sh 'sudo terraform apply'
                    }
                }
            }
        }

        stage('Build Server Sonarqube') {
            steps {
                script {
                    dir('/var/lib/jenkins/workspace/Terraform-GCP/sonarqube') {
                        sh 'ls'  
                        sh 'sudo terraform init'
                        sh 'sudo terraform plan'
                        sh 'sudo terraform apply'
                    }
                }
            }
        }

        stage('Build Google Kubernetes Engine') {
            steps {
                script {
                    dir('/var/lib/jenkins/workspace/Terraform-GCP/kubernetes') {
                        sh 'ls'
                        sh 'sudo terraform init'
                        sh 'sudo terraform plan'
                        sh 'sudo terraform apply'
                    }
                }
            }
        }
    }
}