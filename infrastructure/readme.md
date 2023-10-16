My Terraform IAC initiated with creation of S3 bucket and Postgres RDS.
Accordingly, I had created ECRs and with the help of doscker-compose file i had build 4 docker images namely webserver,rails_app,nginx,ruby.
Written PUSH commands for each images to PUSH in the AWS ECR using IAM role.
Then i had written code for ECS to create VPC,LB,Subnets,Security Groups. Also written code for pushing the ECR to ECS cluster by creating tasks. Tasks has been created with the respective environmental variable, links to rails_app container and port definitions.