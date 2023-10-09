pipeline {
    agent {label "terraform"}

    stages {
        stage('Build Server Jenkins-Agent') {
            steps {
                script {
                    sh 'pwd'
                    sh 'ls -latr'
                    dir('/var/lib/jenkins/workspace/provisioning/jenkins-agent') {
                        sh 'ls' 
                        sh 'terraform init'
                        sh 'terraform plan'
                        sh 'terraform apply'
                    }
                }
            }
        }

        stage('Build Server Sonarqube') {
            steps {
                script {
                    dir('/var/lib/jenkins/workspace/provisioning/sonarqube') {
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
                    dir('/var/lib/jenkins/workspace/provisioning/kubernetes') {
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
