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
					dockerImage = docker.build(registry + ":v$BUILD_NUMBER" + " -p 192.168.1.100:8080:80")
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
