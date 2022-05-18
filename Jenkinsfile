pipeline{

	agent any

	stages {

		stage('Build') {

			steps {
				script {
					dockerImage = docker.build "bg/ms_ca:v1"
					echo "DONE BUILD PASSED"
				}
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
