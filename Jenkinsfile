pipeline {
    agent { label 'puppet' }
    environment {
        PUPPET_ENV = "${currentBuild.fullDisplayName ==~ /.*SDE.*/ ? "[SDE]" : "[Prod]" }"
    }
    stages {

        stage('Puppet 5.5 pdk validate') {
            steps {
                sh ''' 
                #!/bin/bash
                pdk validate --puppet-version 5.5
                '''
            }
        }
        
        stage('Puppet 6 pdk validate') {
            steps {
                sh ''' 
                #!/bin/bash
                pdk validate --puppet-version 6
                '''
            }
        }

        stage('RSpec Unit Tests') {
            steps {
                sh ''' 
                #!/bin/bash
                pdk test unit
                '''
            }
        }

    }
    post {
        always {
            echo 'Job completed'
        }
        success {
            echo 'I succeeded!'
            emailext (
                mimeType: 'text/html',
                to: 'cc:$DEFAULT_RECIPIENTS',
                subject: "${PUPPET_ENV} Jenkins Successful Pipeline: ${currentBuild.fullDisplayName}",
                body: '''${SCRIPT, template="groovy-html.template"}''',
                recipientProviders: [[$class: 'DevelopersRecipientProvider']]
            )
        }
        failure {
            echo 'I failed :('
            emailext (
                mimeType: 'text/html',
                to: 'cc:$DEFAULT_RECIPIENTS',
                subject: "${PUPPET_ENV} Jenkins Failed Pipeline: ${currentBuild.fullDisplayName}",
                body: '''${SCRIPT, template="groovy-html.template"}''',
                recipientProviders: [[$class: 'DevelopersRecipientProvider']]
            )
        }
    }
}