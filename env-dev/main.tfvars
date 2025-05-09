db_instances = {
  /*frontend = {
    ami_id        = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    ansible_role  = "frontend-docker"
    root_volume_size = 30
  }
  catalogue = {
    ami_id        = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    ansible_role  = "catalogue-docker"
    root_volume_size = 30
  }*/
  mongodb = {
    ami_id        = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    root_volume_size = 20
  }
  redis = {
    ami_id        = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    root_volume_size = 20
  }
 /* cart = {
    ami_id        = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    ansible_role  = "cart-docker"
    root_volume_size = 30
  }
  user = {
    ami_id        = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    ansible_role  = "user-docker"
    root_volume_size = 30
  }*/
  /*shipping = {
    ami_id        = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    ansible_role  = "shipping-docker"
    root_volume_size = 30
  }*/
  mysql = {
    ami_id        = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    root_volume_size = 20
  }
  rabbitmq = {
    ami_id        = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    root_volume_size = 20
  }
  /*payment = {
    ami_id        = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    ansible_role  = "payment-docker"
    root_volume_size = 30
  }*/
}
eks = {
  main = {
    subnets     = ["subnet-0e39146f94b13662c", "subnet-04c59eeae941df983"]
    eks_version = 1.32
    node_groups = {
      main = {
        min_nodes      = 2
        max_nodes      = 10
        instance_types = ["t3.medium", "t3.large"]
      }
    }

    addons = {
      #metrics-server = {}
      eks-pod-identity-agent = {}
    }

    access = {
      workstation = {
        role                    = "arn:aws:iam::253490775871:role/workstation-role"
        kubernetes_groups       = []
        policy_arn              = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
        access_scope_type       = "cluster"
        access_scope_namespaces = []
      }
    }
  }
}
zone_id = "Z06398542K2UFV583KXS5"
env = "dev"
vpc_security_group_ids = ["sg-03d4ba2febf49934e"]
