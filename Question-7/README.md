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

   ``` $ az acr create --name ABBTestACR --resource-group myResourceGroup --sku Basic ```

  Login to ACR

   ``` $ az acr login --name ABBTestACR ```

5. Tag and push the local Docker Image to ACR

   ``` $ docker tag myapp:latest ABBTestACR.azurecr.io/myapp:v1 ```

   ``` $ docker push ABBTestACR.azurecr.io/myapp:v1 ```

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  ![image](https://github.com/user-attachments/assets/f7833859-f3e3-4985-9679-5e9eb22aece4)

  ![image](https://github.com/user-attachments/assets/21b92f01-88a5-4edf-8301-736bcb03ae1b)

  ![image](https://github.com/user-attachments/assets/79500dc5-f256-46ef-92d7-7206f8f10c56)

  ![image](https://github.com/user-attachments/assets/9a02ba36-c952-48fe-a447-7a1fc7d46f91)



  


   
