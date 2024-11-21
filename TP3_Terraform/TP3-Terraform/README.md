# TP3 - Terraform

## Init Terraform 

For init your terreform repertory for the first time, you must add the provider used : `provider.tf`

Once is ok, just enter :

```
terraform init
```

You can see the provider is downloading, you can now work with the cloud provider API.

## Main Terraform

It's in this file you declare all the ressources you want to deploy.

You can call different variables for make you code more sharable, the only change coworker must change will be `varibles.tf`

For recall variables, easy way is :

```
var.VARIABLE_NAME
```

It's also possible to call datas from your provider, it can be useful for didn't have to search all ids from AWS Console

```
data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}
```

With this bloc, the informations are recover when you launch a plan or an apply

```
data.aws_vpc.default: Reading...
data.aws_vpc.default: Read complete after 1s [id=vpc-0035b5ae8bbbefd3f]
data.aws_subnets.default: Reading...
data.aws_subnets.default: Read complete after 0s [id=eu-west-1]
```

For recall data, you have to specify wich attribut you need : 

```
data.RESSOURCE_TYPE.DATA_NAME.ATTRIBUT
```

### Data usage explaination

`Ressource Type` is a data source existing in AWS, as `aws_lb` for exemple

`Data Name` represent just the name we give to this data for recall it later in the code


It exist many `Attribut` for `aws_vpc`

### AWS VPC Attributes

#### 1. ID and Identification
- **`id`**: The unique ID of the VPC (e.g., `vpc-0abc12345def67890`).
- **`arn`**: The Amazon Resource Name (ARN) of the VPC.

#### 2. Address and Network
- **`cidr_block`**: The CIDR block assigned to the VPC (e.g., `10.0.0.0/16`).
- **`ipv6_cidr_block`**: The IPv6 CIDR block assigned to the VPC, if available.
- **`cidr_block_association_id`**: The ID associated with the CIDR block.
- **`default_network_acl_id`**: The ID of the default Network ACL associated with the VPC.
- **`default_route_table_id`**: The ID of the default route table associated with the VPC.
- **`default_security_group_id`**: The ID of the default Security Group for the VPC.

#### 3. VPC Information
- **`is_default`**: Indicates whether the VPC is the default VPC for the region (boolean).
- **`state`**: The current state of the VPC (e.g., `available`).

#### 4. DNS and Connectivity
- **`enable_dns_support`**: Indicates whether the AWS DNS Resolver is enabled for the VPC (boolean).
- **`enable_dns_hostnames`**: Indicates whether DNS hostnames are enabled for instances in the VPC (boolean).

#### 5. Tags
- **`tags`**: A map containing all tags associated with the VPC (e.g., `{ Name = "DGD_VPC1", Environment = "Production" }`).


## Apply

When you have declare all ressources you want to deploy, you just have to apply them :

```
terraform apply
```

You can plan before for check if all is OK :

```
terraform plan
```

## Output

You can call different information after deploying them in an `output.tf` file.

In my case, I would have the loadbalancer DNS entrie : 

```
Outputs:

load_balancer_dns_name = "DGD-LoadBalancer-1730882447.eu-west-1.elb.amazonaws.com"
```