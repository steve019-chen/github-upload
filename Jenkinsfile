pipeline {
    agent { label 'puppet' }
    stages {

        stage('prepare gems') {
            steps {
                sh ''' 
                #!/bin/bash
                source ~/.profile
                source $(rvm 2.4.6 do rvm env --path)
                proxyon
                bundle install --path=.bundle/gems/
                proxyoff
                '''
            }
        }

        stage('syntax testing') {
            steps {
                sh ''' 
                #!/bin/bash
                source ~/.profile
                source $(rvm 2.4.6 do rvm env --path)
                bundle exec puppet parser validate manifests/
                '''
            }
        }

        stage('lint testing') {
            steps {
                sh '''
                #!/bin/bash
                source ~/.profile
                source $(rvm 2.4.6 do rvm env --path)
                bundle exec puppet-lint --no-autoloader_layout-check manifests/*.pp
                '''
            }
        }

        stage('rspec testing') {
            // steps {
            //     sh '''
            //     #!/bin/bash
            //     source ~/.profile
            //     source $(rvm 2.4.4 do rvm env --path)
            //     proxyon
            //     bundle exec rake spec
            //     proxyoff
            //     '''
            // }
            steps {
                script {
                    rspec_status = sh (
                        returnStatus: true,
                        script: '''\
                            #!/bin/bash \
                            source ~/.profile \
                            source $(rvm 2.4.6 do rvm env --path) \
                            proxyon \
                            bundle exec rake spec \
                            proxyoff \
                            '''
                    ) == 0
                    echo "RSPEC test: ${rspec_status}"
                }
            }

        }

    }
    post {
        always {
            echo 'Job completed'
           
        }
        success {
            echo 'I succeeded!'
            mail to: 'shaun.mcevoy@telus.com',
                subject: "Successful Pipeline: ${currentBuild.fullDisplayName}",
                body: "${env.BUILD_URL} ran successfully.  RSPEC Testing: ${rspec_status}"
        }
        failure {
            echo 'I failed :('
            mail to: 'shaun.mcevoy@telus.com',
                subject: "Failed Pipeline: ${currentBuild.fullDisplayName}",
                body: "Something is wrong with ${env.BUILD_URL}.  RSPEC Testing: ${rspec_status}"
        }
    }
}