pipeline{
    agent any
    environment{
        dockerhubCred= credentials('docker-cred')
        dockerImage= 'mlops:latest'
    }
    stages{
        stage('Git checkout'){
            steps{
                git(
                    url:https:'//github.com/Dhruv-274/MlOps1.git',
                    branch: 'master'
                )
            }
        }
        stage('Build Docker Image'){
            steps{
                script{
                    docker.build(dockerImage)
                }
            }
        }
        stage('Push to docker hub'){
            steps{
                script{
                    docker.withRegistry("https://registry/hub.docker.com",'docker-cred'){
                        docker.image(dockerImage).push('latest')
                }
            }
        }
    }
}