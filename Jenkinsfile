node{
    stage('SCM Checkout'){
	   git 'https://github.com/MadhuBadri/amazon'
	      }
    stage('Compile Package'){
	//Get Maven Home Path
	  def mvnHome = tool name: 'maven-3', type: 'maven'
	  sh "${mvnHome}/bin/mvn clean package"
          }
    stage('SonarQube Analysis') {
        def mvnHome =  tool name: 'maven-3', type: 'maven'
        withSonarQubeEnv('Sonar') { 
          sh "${mvnHome}/bin/mvn sonar:sonar"
        }
    }
   stage("Quality Gate Status Check"){
          timeout(time: 1, unit: 'HOURS') {
              def qg = waitForQualityGate()
              if (qg.status != 'OK') {
                  error "Pipeline aborted due to quality gate failure: ${qg.status}"
              }
          }
      } 	
	
    stage('Email Notification'){
	   mail bcc: '', body: '''Hi,

Welcome to Jenkins email alerts.

Thanks
Madhu.''', cc: '', from: '', replyTo: '', subject: 'Jenkins Test Email', to: 'muddulurumadhu007@gmail.com'
        }	
    }		
