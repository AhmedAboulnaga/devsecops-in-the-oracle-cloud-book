# Configuration for the OCI provider
provider "oci" {
  tenancy_ocid="ocid1.tenancy.oc1..aaaaaaaamvsnb6fteatsnlzy75c6q7…"
  user_ocid="ocid1.user.oc1..aaaaaaaaqtpmtdoc7664vcc34feusr36igt7…"
  fingerprint="7d:dd:5f:3d:21:13:db:05:42:69:76:49:0b:11:e8:80"
  region="us-ashburn-1"
  private_key_path="/home/oracle/.oci/orakey.pem"
}

# Retrieve the list of OCI availability domains
data "oci_identity_availability_domains" "ads" {
  compartment_id = "ocid1.tenancy.oc1..aaaaaaaamvsnb6fteatsnlz…"
}

# Output the result
output "list-my-ads " {
  value = "${data.oci_identity_availability_domains.ads.availability_domains}"
}

# Retrieve the list of OCI availability domains
data "oci_identity_availability_domains" "ads" {
  compartment_id="${var.my_oci_tenancy}"
}
