module "dev_vcn" {
  source="oracle-terraform-modules/vcn/oci"
  version="3.1.0"

  # Required; obtain this from the output of previous section
  compartment_id=oci_identity_compartment.dev_compartment.id

  # Required; Chapter 23 describes how to get the region identifier
  region="us-ashburn-1"

  # Required; set to null for now
  internet_gateway_route_rules = null
  local_peering_gateways = null
  nat_gateway_route_rules = null

  # Optional
  vcn_name="dev-vcn-module"
  vcn_dns_label="vcnmodule"
  vcn_cidrs=["10.0.0.0/16"]
  create_internet_gateway=true
  create_nat_gateway=true
  create_service_gateway=true  
}
