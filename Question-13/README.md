## Scan container images for vulnerabilities using Azure Security Center or a third-party tool. Share findings and mitigation steps.

# Scan Using Trivy 

Steps:

1. Install Triivy on machine
  
   ``` $ sudo dnf install -y yum-utils ```

   ``` $ sudo yum-config-manager --add-repo https://aquasecurity.github.io/trivy-repo/rpm/releases.repo ```

   ``` $ sudo yum install -y trivy ```

   ``` $ trivy --version ```

2. Scan the Image

   ``` $ trivy image akshaykumart/myapp:latest ```

   ``` $ trivy image --severity CRITICAL akshaykumart/myapp:latest ```

   ``` $ trivy image -f table -o container-scan-report.txt akshaykumart/myapp:latest ```

3. Next steps

   update the Dockerfile with the recommanded fixes , rebuild the image and scan sagin
   
