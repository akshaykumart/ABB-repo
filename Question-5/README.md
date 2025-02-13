## Multi-stage pipeline for deployments across Dev, Staging, and Prod environments with specific configurations.

Steps:

1. Install Jenkins Plugins

   Pipeline (workflow-aggregator) ,
   Docker Pipeline (docker-workflow) ,
   Kubernetes CLI (kubectl)

2. Set Up Jenkins Credentials

   Docker Hub credentials (docker-hub),
   Kubeconfig file (kubeconfig)

3. Create the Deployment manifest files for dev,staging and production environments
   
   kubernetes/dev/deployment.yaml ,
   kubernetes/staging/deployment.yaml ,
   kubernetes/prod/deployment.yaml

4. Create a Jenkinsfile
   
 
