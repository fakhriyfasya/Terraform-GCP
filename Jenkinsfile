pipeline {
    agent any

    stages {
        stage('Create Instance Jenkins Agent') {
            steps {
                sh 'pwd'
                sh 'ls'
                dir('jenkins-agent')
                sh 'ls'
                sh 'sudo terraform init'
                sh 'sudo terraform plan'
                sh 'sudo terraform apply'
            }
        }
    }
}