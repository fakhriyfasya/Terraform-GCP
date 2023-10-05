pipeline {
    agent any

    stages {
        stage('Build Server Jenkins-Agent') {
            steps {
                script {
                    // Change the working directory to /var/lib/workspace
                    dir('/var/lib/jenkins/workspace/Terraform-GCP/jenkins-agent') {
                        // Inside this block, you are in the /var/lib/workspace directory
                        // You can execute commands or perform actions here
                        sh 'ls'  // Example command
                        sh 'sudo terraform init'  // Another example command (Terraform init)
                        sh 'sudo terraform plan'
                        sh 'sudo terraform apply'
                    }
                }
            }
        }

        stage('Build Server Sonarqube') {
            steps {
                script {
                    // Change the working directory to /var/lib/workspace
                    dir('/var/lib/jenkins/workspace/Terraform-GCP/sonarqube') {
                        // Inside this block, you are in the /var/lib/workspace directory
                        // You can execute commands or perform actions here
                        sh 'ls'  // Example command
                        sh 'sudo terraform init'  // Another example command (Terraform init)
                        sh 'sudo terraform plan'
                        sh 'sudo terraform apply'
                    }
                }
            }
        }

        stage('Build Google Kubernetes Engine') {
            steps {
                script {
                    // Change the working directory to /var/lib/workspace
                    dir('/var/lib/jenkins/workspace/Terraform-GCP/kubernetes') {
                        // Inside this block, you are in the /var/lib/workspace directory
                        // You can execute commands or perform actions here
                        sh 'ls'  // Example command
                        sh 'sudo terraform init'  // Another example command (Terraform init)
                        sh 'sudo terraform plan'
                        sh 'sudo terraform apply'
                    }
                }
            }
        }
    }
}