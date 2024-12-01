pipeline{
    agent{
        label "jenkins-agent"
    }
    tools{
        jdk "Java17"
        maven "Maven3"
    }
    stages{
        stage("Cleanup Workspace") {
            steps{
                cleanWs()
            }
        }
    }
    stages{
        stage("Checkout from SCM") {
            git branch 'main', credentials: 'github', url: 'https://github.com/destriu/cicd-practice'
        }
    }
}