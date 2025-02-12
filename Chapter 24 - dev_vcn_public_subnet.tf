resource "oci_core_subnet" "dev_vcn_public_subnet" {

  # Required
  compartment_id=oci_identity_compartment.dev_compartment.id
  vcn_id=module.dev_vcn.vcn_id
  cidr_block = "10.0.0.0/24"
 
  # Optional
  route_table_id=module.dev_vcn.ig_route_id
  security_list_ids=[oci_core_security_list.dev_public_security_list.id]
  display_name="dev-public-subnet"
}
