SIMPLE NODEJS APPLICATION DEPLOYING ON GCP App Engine WITH TERRAFORM.

1 Fist we will write a simple nods js code. Files are available in this repo with name:
  - index.js
  - packages.json
  - packages-lock.json
2 Create a terraform configuration. Files are available in this repo with name:
  - main.tf
  - variables.tf
In main.tf we have a resource block for bucket. 

3 Now create the bucket, use command: 
  terraform init
  terraform validate
  terraform plan
  terraform apply 
Once it done. we need to zip the nodejs code and send that zip code to the bucket.

In main.tf we have a resource block for getting the object from bucket and also have a resource block for creating the GCP App engine. In app engine resource block, we have:
  - name for app engine service
  - version
  - source       - here we give the bucket object url, With this url app engine will get the code from bucket
  - runtime      - for node application
  - entrypoint   - for starting the node application
  - port         - application port 
  - autoscaling 

In variable.tf file we have create all variable that will be using in main.tf file....

Now again use command for creating the app engine:
 terraform init
 terraform validate
 terraform plan
 terraform apply
 
Once it done. YOu will see your application successfully running on GCP App engine. 
