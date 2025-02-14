## 

Steps:

1. Make sure the SonarQube is installed on the server 

2. Create a authentication token

3. Install SonarQube Scanner plugin plugin in Jenkins

   ``` Jenkins > Plugin Manager > Available Plugins ```

4. Configure SonarQube in jenkins

   ``` Manage Jenkins > Configure System > SonarQube servers > <SonarQube URL and Authentication Token> ```

5. Add SonarQube stage in Jenkinsfile 
   
