resource "oci_core_security_list" "dev_private_security_list"{

  # Required
  compartment_id=oci_identity_compartment.dev_compartment.id
  vcn_id=module.dev_vcn.vcn_id

  # Optional
  display_name="dev-private-subnet-security-list"

  # Egress security rules
  egress_security_rules {
    stateless=false
    destination="0.0.0.0/0"
    destination_type="CIDR_BLOCK"
    protocol="all" 
  }

  # Ingress security rules (TCP)
  ingress_security_rules { 
    stateless=false
    source="10.0.0.0/16"
    source_type="CIDR_BLOCK"
    protocol="6"
    tcp_options { 
      min=22
      max=22
    }
  }
  # Ingress security rules (ICMP)
  ingress_security_rules { 
    stateless=false
    source="0.0.0.0/0"
    source_type="CIDR_BLOCK"
    protocol="1"
    icmp_options {
      type=3
      code=4
    }
  }
  ingress_security_rules { 
    stateless=false
    source="10.0.0.0/16"
    source_type="CIDR_BLOCK"
    protocol="1"
    icmp_options {
      type=3
    } 
  }
}
