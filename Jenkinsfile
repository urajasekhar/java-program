node{
    stage('SCM Checkout'){
	   git 'https://github.com/MadhuBadri/amazon'
	      }
    stage('Compile Package'){
	//Get Maven Home Path
	  def mvnHome = tool name: 'maven-3', type: 'maven'
	  sh "${mvnHome}/bin/mvn clean package"
          }
}	
