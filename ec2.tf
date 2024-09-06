# Set Ec2 Instances


resource "aws_instance" "i-ayalongis-gis-prod" {
  subnet_id = "subnet-0e9a9dde5d80c8195"
  iam_instance_profile = "ssm-ec2-role"
  security_groups = ["sg-0bd381e5d6b51d33f"]
  count = 1
  ami           = "ami-0887cf6f0ee09ce35"
  instance_type = "r5.2xlarge"
  root_block_device {
   volume_type = "gp3"
   volume_size = 100
  }
  ebs_block_device {
    volume_type = "gp3"
    device_name = "/dev/sdb"
    volume_size = 500
  }


tags = {
	Name = "i-ayalongis-gis-prod"
 }
}

resource "aws_instance" "i-ayalongishw-gis-prod" {
  subnet_id = "subnet-0e1e014a5c4d30340"
  iam_instance_profile = "ssm-ec2-role"
  security_groups = ["sg-0bd381e5d6b51d33f"]
  count = 1
  ami           = "ami-0887cf6f0ee09ce35"
  instance_type = "r5.2xlarge"
  root_block_device {
   volume_type = "gp3"
   volume_size = 100
  }
  ebs_block_device {
    volume_type = "gp3"
    device_name = "/dev/sdb"
    volume_size = 500
  }
 

tags = {
	Name = "i-ayalongishw-gis-prod"
 }
} 

resource "aws_instance" "i-gis-prod-download" {
  subnet_id = "subnet-0e1e014a5c4d30340"
  iam_instance_profile = "ssm-ec2-role"
  security_groups = ["sg-0bd381e5d6b51d33f"]
  count = 1
  ami           = "ami-0887cf6f0ee09ce35"
  instance_type = "r5.2xlarge"
  root_block_device {
   volume_type = "gp3"
   volume_size = 100
  }
  ebs_block_device {
    volume_type = "gp3"
    device_name = "/dev/sdb"
    volume_size = 500
  }
 

tags = {
	Name = "i-gis-prod-download"
 }
} 
