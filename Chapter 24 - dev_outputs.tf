# ----------------------------------------
# Outputs for compartment
# ----------------------------------------
output "compartment-name" {
  value=oci_identity_compartment.dev_compartment.name
}
output "compartment-OCID" {
  value=oci_identity_compartment.dev_compartment.id
}

# ----------------------------------------
# Outputs for vcn
# ----------------------------------------
output "vcn-id" {
  value=module.dev_vcn.vcn_id
}
output "internet-gateway-route-table-id" {
  value=module.dev_vcn.ig_route_id
}
output "nat-gateway-id" {
  value=module.dev_vcn.nat_gateway_id
}
output "nat-gateway-route-table-id" {
  value=module.dev_vcn.nat_route_id
}

# ----------------------------------------
# Outputs for private security list
# ----------------------------------------
output "private-security-list-name" {
  value=oci_core_security_list.dev_private_security_list.display_name
}
output "private-security-list-OCID" {
  value=oci_core_security_list.dev_private_security_list.id
}

# ----------------------------------------
# Outputs for public security list
# ----------------------------------------
output "public-security-list-name" {
  value=oci_core_security_list.dev_public_security_list.display_name
}
output "public-security-list-OCID" {
  value=oci_core_security_list.dev_public_security_list.id
}

# ----------------------------------------
# Outputs for private subnet
# ----------------------------------------
output "private-subnet-name" {
  value=oci_core_subnet.dev_vcn_private_subnet.display_name
}
output "private-subnet-OCID" {
  value=oci_core_subnet.dev_vcn_private_subnet.id
}

# ----------------------------------------
# Outputs for public subnet
# ----------------------------------------
output "public-subnet-name" {
  value=oci_core_subnet.dev_vcn_public_subnet.display_name
}
output "public-subnet-OCID" {
  value=oci_core_subnet.dev_vcn_public_subnet.id
}

# ----------------------------------------
# Outputs for compute
# ----------------------------------------
output "compute-instance-public-ip" {
  value=oci_core_instance.dev_instance1.public_ip
}
output "compute-instance-name" {
  value=oci_core_instance.dev_instance1.display_name
}
output "compute-instance-OCID" {
  value=oci_core_instance.dev_instance1.id
}
output "compute-instance-state" {
  value=oci_core_instance.dev_instance1.state
}

# ----------------------------------------
# Outputs for autonomous database
# ----------------------------------------
output "autonomousdatabase-OCID" {
  value=oci_database_autonomous_database.devautonomousdatabase1.id
}
output "autonomousdatabase-connection-strings" {
  value=oci_database_autonomous_database.devautonomousdatabase1.connection_strings
}
output "autonomousdatabase-private-endpoint-ip" {
  value=oci_database_autonomous_database.devautonomousdatabase1.private_endpoint_ip
output "autonomousdatabase-private-endpoint-ip" {
  value=oci_database_autonomous_database.devautonomousdatabase1.state
}
