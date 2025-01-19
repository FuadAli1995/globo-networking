##################################################################################
# IMPORTS
##################################################################################

import {
  to = module.main.aws_vpc.this[0]
  id = "vpc-0a139b2cf5bf62095" #VPC
}

import {
  to = module.main.aws_subnet.public[0]
  id = "subnet-0198a6f4f9db9b60a" #PublicSubnet1
}

import {
  to = module.main.aws_subnet.public[1]
  id = "subnet-034217a51660702a6" #PublicSubnet2
}

import {
  to = module.main.aws_internet_gateway.this[0]
  id = "igw-090044125aebb7886" #InternetGateway
}

import {
  to = module.main.aws_route.public_internet_gateway[0]
  id = "rtb-01b01dd46ad7f099f_0.0.0.0/0" #DefaultPublicRoute
}

import {
  to = module.main.aws_route_table.public[0]
  id = "rtb-01b01dd46ad7f099f" #PublicRouteTable
}

import {
  to = module.main.aws_route_table_association.public[0]
  id = "subnet-0198a6f4f9db9b60a/rtb-01b01dd46ad7f099f" #PublicSubnet1/PublicRouteTable
}

import {
  to = module.main.aws_route_table_association.public[1]
  id = "subnet-034217a51660702a6/rtb-01b01dd46ad7f099f" #PublicSubnet2/PublicRouteTable
}

import {
  to = aws_security_group.ingress
  id = "sg-01bd9a6b553432c94" #NoIngressSecurityGroup
}
