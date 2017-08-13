pipeline {
  agent {
    docker {
      image 'centos'
    }
    
  }
  stages {
    stage('unit tests') {
      steps {
        parallel(
          "unit tests": {
            sh '''


bats t'''
            
          },
          "package": {
            sh 'abs build'
            
          }
        )
      }
    }
    stage('package') {
      steps {
        sh 'tar -xzf *'
      }
    }
    stage('ship') {
      steps {
        echo 'we done'
      }
    }
  }
}