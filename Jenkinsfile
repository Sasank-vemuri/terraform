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
        // Fixing the shell variable substitution
        sh '''
  export TF_VAR_prefix=$TF_VAR_prefix
  terraform apply -var "prefix=$TF_VAR_prefix" -auto-approve
'''

      }
    }
  }
}
