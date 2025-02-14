## Configure Azure Monitor for the AKS-based application, creating alerts for CPU and memory thresholds.

Steps:

1. Enable Azure Monitoring for AKS cluster

   ``` $ az aks update --resource-group <RESOURCE_GROUP> --name <AKS_CLUSTER_NAME> --enable-addons monitoring ```

2. Install Metrics Server in AKS

   ``` $ kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml ```

3. Verify the metric server
   
   ``` $ kubectl get deployment metrics-server -n kube-system ```

4. Create a alert rule for CPU usage

   ``` $ az monitor metrics alert create --name "CPU_Alert" --resource-group <RESOURCE_GROUP> --scopes /subscriptions/<SUBSCRIPTION_ID>/resourceGroups/<RESOURCE_GROUP>/providers/Microsoft.ContainerService/managedClusters/<AKS_CLUSTER_NAME> --condition "max containerCpuUsagePercentage > 80" --description "Alert when CPU exceeds 80%" --action-group <ACTION_GROUP_NAME> --severity 3 ```

5. Create a alert rule for Memory usage

   ``` $ az monitor metrics alert create --name "Memory_Alert" --resource-group <RESOURCE_GROUP> --scopes /subscriptions/<SUBSCRIPTION_ID>/resourceGroups/<RESOURCE_GROUP>/providers/Microsoft.ContainerService/managedClusters/<AKS_CLUSTER_NAME> --condition "max containerMemoryWorkingSetBytes > 500Mi" --description "Alert when Memory exceeds 500Mi" --action-group <ACTION_GROUP_NAME> --severity 3 ```
   
6. Verify

   ``` $ kubectl top pods ```

   ``` $ kubectl top nodes ```

7. Set Up Horizontal Pod Autoscaler (HPA) if the threshold frequent of CPU and Memory are crossed
