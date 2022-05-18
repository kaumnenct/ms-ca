pipeline{
	environment {
		registry = "kaumnenct/ms-ca"
		registryCredential = "docker_hub_secret"
		dockerImage = ""
	}

	agent any

	stages {

		stage('Build') {

			steps {
				script {
					dockerImage = docker.build registry + ":v$BUILD_NUMBER"
					echo "DONE BUILD PASSED"
				}
			}
		}

		stage('Image Deploy') {

			steps {
				script {
					docker.withRegistry("", registryCredential) {
						dockerImage.push()
					}
				}
			}
		}
	}
}
