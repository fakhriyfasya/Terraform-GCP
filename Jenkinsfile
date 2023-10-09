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
                        sh 'terraform apply --auto-approve'
                    }
                }
            }
        }

        stage('Build Server Sonarqube') {
            steps {
                script {
                    dir('/var/lib/jenkins/workspace/provisioning/sonarqube') {
                        sh 'ls'  
                        sh 'terraform init'
                        sh 'terraform plan'
                        sh 'terraform apply --auto-approve'
                    }
                }
            }
        }

        stage('Build Google Kubernetes Engine') {
            steps {
                script {
                    dir('/var/lib/jenkins/workspace/provisioning/kubernetes') {
                        sh 'ls'
                        sh 'terraform init'
                        sh 'terraform plan'
                        sh 'terraform apply --auto-approve'
                    }
                }
            }
        }
    }
}
