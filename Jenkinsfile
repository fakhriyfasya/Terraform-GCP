pipeline {
    agent any

    stages {
        stage('Create Instance Jenkins Agent') {
            steps {
                sh 'pwd'
                sh 'ls'
                sh 'cd jenkins-agent'
                sh 'terraform init'
                sh 'terraform plan'
                sh 'terraform apply'
            }
        }
    }
}