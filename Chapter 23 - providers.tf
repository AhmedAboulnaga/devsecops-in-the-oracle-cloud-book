# Configuration for the OCI provider
provider "oci" {
  tenancy_ocid="${var.my_oci_tenancy}"
  user_ocid="${var.my_oci_user}"
  fingerprint="${var.my_oci_fingerprint}"
  region="${var.my_oci_region}"
  private_key_path="${var.my_oci_privatekey}"
}
