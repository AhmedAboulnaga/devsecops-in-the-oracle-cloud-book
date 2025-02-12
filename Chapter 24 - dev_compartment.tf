resource "oci_identity_compartment" "dev_compartment" {
  # This should be the compartment OCID for the root compartment
  compartment_id="${var.my_oci_tenancy}"
  description="Compartment for development resources"
  name="dev-compartment"
}
