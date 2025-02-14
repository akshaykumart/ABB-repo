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

   ``` $ helm install abb-app . -f values.yaml ```

   ``` $ helm list -A ```

5. Verify

   ``` $ kubectl get deployments ```

   ``` $ kubectl get services ```
