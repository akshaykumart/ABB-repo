## Retrieve the secrets from azure key vault 

Steps to Retrieve Secrets from Azure Key Vault in Jenkins

1. Install Required Jenkins Plugins

   Azure Credentials Plugin,
   Azure Key Vault Plugin

2. Create an Azure Service Principal and grant access to azure keyvault

   ``` $ az ad sp create-for-rbac --name "jenkins-sp" --role Reader --scopes /subscriptions/{subscription-id}/resourceGroups/{resource-group-name} ```

   ``` $ az keyvault set-policy --name test-keyvault --spn <client_id> --secret-permissions get list```

3. Configure Azure Credentials in Jenkins

   In Jenkins → Manage Jenkins → Manage Credentials, add:
   Kind: Azure Service Principal
   Scope: Global
   Client ID, Client Secret, Tenant ID, and Subscription ID from step 2.

4. Use the secret to azure key vault

   ``` $ az keyvault secret set --vault-name test-keyvault --name db-password --value "**********" ```

5. Then retrieve the secret into Jenkins as shown in Jenkinsfile.

