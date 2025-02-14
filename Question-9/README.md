## Package the Kubernetes deployment into a Helm chart and deploy it.

Steps:

1. Create the helm chart
   
   ``` $ helm create abb-app ```

2. Add the kubernetes Deployment and Service manifests in helm templates

   templates/Deployment.yaml ,
   templates/service.yaml

3. Create values.yaml for customization

4. Package the Helm Chart

   ``` $ helm package abb-app ```

   ``` $ helm install abb-app . -f values.yaml -n abb```

   ``` $ helm list -A ```

5. Verify

   ``` $ kubectl get deployments -n abb```

   ``` $ kubectl get services -n abb```

-------------------------------------------------------------------------------------------

![image](https://github.com/user-attachments/assets/01e301d8-c935-4991-ab08-2adf06e998e7)

![image](https://github.com/user-attachments/assets/fd295f31-5da5-4799-a557-03ef275b8172)

![image](https://github.com/user-attachments/assets/b80490ca-e503-465f-a155-c1cf1510d1f2)

![image](https://github.com/user-attachments/assets/569a5812-5cc0-4624-84a6-4917e95882be)

![image](https://github.com/user-attachments/assets/0e89d83f-5953-4124-a133-5ac3f1e82516)

