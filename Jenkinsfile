node{
    stage('SCM Checkout'){
	   git 'https://github.com/MadhuBadri/amazon'
	      }
    stage('Compile Package'){
	//Get Maven Home Path
	  def mvnHome = tool name: 'maven-3', type: 'maven'
	  sh "${mvnHome}/bin/mvn clean package"
          }
    stage('Email Notification'){
	   mail bcc: '', body: '''Hi,

Welcome to Jenkins email alerts.

Thanks
Madhu.''', cc: '', from: '', replyTo: '', subject: 'Jenkins Test Email', to: 'muddulurumadhu007@gmail.com'
        }	
    }		
