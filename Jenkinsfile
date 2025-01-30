pipeline {
  agent any

  environment {
     TF_VAR_prefix = 'An' 
   }

  stages {
    stage('Clone') {
      steps {
        git branch: 'main', url: 'https://github.com/Sasank-vemuri/terraform.git'
      }
    }
    stage('Initialize Terraform') {
      steps {
        sh 'terraform init'
      }
    }
    stage('Execute Terraform Apply') {
      steps {
        sh 'terraform apply -var "prefix=${env.TF_VAR_prefix}" -auto-approve'
      }
    }
  }
}
