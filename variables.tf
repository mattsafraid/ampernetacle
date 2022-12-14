variable "name" {
  type    = string
  default = "kubernetes-on-arm-with-oracle"
}

/*
Available flex shapes:
"VM.Optimized3.Flex"  # Intel Ice Lake
"VM.Standard3.Flex"   # Intel Ice Lake
"VM.Standard.A1.Flex" # Ampere Altra
"VM.Standard.E3.Flex" # AMD Rome
"VM.Standard.E4.Flex" # AMD Milan
*/

variable "shape" {
  type    = string
  default = "VM.Standard.A1.Flex"
}

variable "how_many_nodes" {
  type    = number
  default = 0
}

variable "availability_domain" {
  type    = number
  default = 0
}

variable "ocpus_per_node" {
  type    = number
  default = 1
}

variable "memory_in_gbs_per_node" {
  type    = number
  default = 6
}

variable "parent_compartment_id" {
  type = string
}

variable "nodes_description" {
  type = map(any)
  default = {
    node1 = {
      ad = 0
      fd = 2
    }
    node2 = {
      ad = 0
      fd = 3
    }
    node3 = {
      ad = 1
      fd = 2
    }
    node4 = {
      ad = 1
      fd = 3
    }
  }
}