## Create a Dockerfile for a sample nodejs application, build the image, and push it to Azure Container Registry (ACR).

steps:

1. Create the apps related files 

   ``` vi package.json ``` 

   ``` vi app.js ```

2. Create the Dockerfile for Nodejs application

   ``` $ vi Dockerfile ```

3. Build the Docker Image using Dockerfile

   ``` $ docker build -t myapp:latest . ```

4. Create the ACR if needed .
  
   ``` $ az login ```
   
  Create a ACR   

   ``` $ az acr create --name myacr --resource-group myResourceGroup --sku Basic ```

  Login to ACR

   ``` $ az acr login --name myacr ```

5. Tag and push the local Docker Image to ACR

   ``` $ docker tag myapp:latest myacr.azurecr.io/myapp:v1 ```

   ``` $ docker push myacr.azurecr.io/myapp:v1 ```

  
   
