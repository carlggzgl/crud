pipeline {
    agent any
    stages {
        stage('hello') {
            steps {
                sh 'echo hola'
            }
        }
    }
        stages {
        stage('Cloning Git Respository') {
            steps {
                git branch: 'main', url: 'https://github.com/zitodepina/jk-public-gh1.git'
            }
        }
}
