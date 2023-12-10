pipeline {
    agent any

    stages {
        stage('Terraform Apply') {
            steps {
                script {
                    git url: 'https://github.com/PrasanthKumar0/Jenkins-Terraform-EC2-S3-Infrastructure.git'
                    sh 'terraform init'
                    sh 'terraform apply -auto-approve'
                }
            }
        }

        stage('Terraform Destroy') {
            steps {
                script {
                    git url: 'https://github.com/PrasanthKumar0/Jenkins-Terraform-EC2-S3-Infrastructure.git'
                    sh 'terraform init'
                    sh 'terraform destroy -auto-approve'
                }
            }
        }
    }
}
