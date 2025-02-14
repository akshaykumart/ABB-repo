## Deploy the containerized application to AKS using a Kubernetes deployment YAML file. Include readiness and liveness probes.

steps:

1. Connect to AKS cluster

   ``` $ az aks get-credentials --resource-group myResourceGroup --name myAKSCluster ```

2. Create Deployment manifest file 

   ``` vi deployment.yaml ```

3. Create Service manifest file

   ``` vi service.yaml ```

4. Apply the k8s configuration

  ``` $ kubectl apply -f deployment.yaml ```

  ``` $ kubectl apply -f service.yaml ```

5. Verify

  ``` $ kubectl get deployments ```

  ``` $ kubectl get svc ```

6. Access the application

   ``` $ kubectl port-forward svc/myapp-service 8080:80 ```


   ``` $ curl http://localhost:8080 ```


----------------------------------------------------------------------------------------------------------------------------------------------------------

![image](https://github.com/user-attachments/assets/cb4d2b06-c1e7-408c-8f5f-22a94695b449)

![image](https://github.com/user-attachments/assets/27f8e1e2-5baa-440e-823b-7a7f2b649285)

![image](https://github.com/user-attachments/assets/fe412ca1-67ef-42b5-b6e5-1f7cdd250df6)


