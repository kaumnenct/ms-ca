pipeline{

	agent any

	stages {

		stage('Build') {

			steps {
				sh 'docker build -t ms_ca/ubuntu:latest .'
				echo "DONE BUILD PASSED"
			}
		}

		stage('Login') {

			steps {
				echo 'test2'
			}
		}

		stage('Push') {

			steps {
				echo 'test3'
			}
		}
	}
}
