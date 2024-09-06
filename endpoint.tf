resource "aws_vpc_endpoint" "ec2-ssm-endpoint" {
  vpc_id = "vpc-0571289c6b94e2e60"
  security_group_ids = ["sg-0bd381e5d6b51d33f"]
  service_name = "com.amazonaws.il-central-1.ssm" # Service name for EC2
  subnet_ids = ["subnet-0e9a9dde5d80c8195", "subnet-0ed7cf52238add0fa", "subnet-063f78c9f92d36eb0"]
  vpc_endpoint_type = "Interface"
  private_dns_enabled = true
  
    tags = {
        Name = "ec2-ssm-endpoint"
    }
 }

resource "aws_vpc_endpoint" "ec2-ssmmessages-endpoint" {
  vpc_id = "vpc-0571289c6b94e2e60"
  security_group_ids = ["sg-0bd381e5d6b51d33f"]
  service_name = "com.amazonaws.il-central-1.ssmmessages" # Service name for EC2
  subnet_ids = ["subnet-0e9a9dde5d80c8195", "subnet-0ed7cf52238add0fa", "subnet-063f78c9f92d36eb0"]
  vpc_endpoint_type = "Interface"
  private_dns_enabled = true
  
    tags = {
        Name = "ec2-ssmmessages-endpoint"
    }
 }
resource "aws_vpc_endpoint" "ec2-ec2messages-endpoint" {
  vpc_id = "vpc-0571289c6b94e2e60"
  security_group_ids = ["sg-0bd381e5d6b51d33f"]
  service_name = "com.amazonaws.il-central-1.ec2messages" # Service name for EC2
  subnet_ids = ["subnet-0e9a9dde5d80c8195", "subnet-0ed7cf52238add0fa", "subnet-063f78c9f92d36eb0"]
  vpc_endpoint_type = "Interface"
  private_dns_enabled = true
  
    tags = {
        Name = "ec2-ec2messages-endpoint"
    }
 }
