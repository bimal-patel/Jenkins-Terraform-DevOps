pipeline {
    agent any

    stages {
        stage('Git Checkut') {
            steps {
                git branch: 'main', changelog: false, poll: false, url: 'https://github.com/bimal-patel/Jenkins-Terraform-DevOps.git'
            }
        }
        stage('terraform init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform action needed') {
            steps {
                input 'Please enter an action to perform with Terraform: '
            }
        }
    }
}
