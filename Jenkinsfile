pipeline {
    agent any
    
    stages{
        stage("code"){
            steps {
                echo "hello world"
                git url:"https://github.com/parth81220/ecom_site.git", branch:"main"
            }
        }
        stage("build"){
            steps {
                echo "hello world"
                sh "sudo docker build -t my-app ."
            }
        }
        stage("push"){
            steps {
                echo "hello world"
                withCredentials([usernamePassword(credentialsId:"dockerhub", passwordVariable:"dockerhubPass", usernameVariable:"dockerhubUser")]){
                sh "docker tag my-app ${env.dockerhubUser}/my-app:latest"
                sh "docker login -u ${env.dockerhubUser} -p ${env.dockerhubPass}"
                sh "docker push ${env.dockerhubUser}/my-app:latest"
                }
            }
        }
        stage("deploy"){
            steps {
                echo "hello world"
                sh "docker-compose down && docker-compose up -d"
            }
        }
    }
}
