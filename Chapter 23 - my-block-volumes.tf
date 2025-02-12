# Creates a block volume
resource "oci_core_volume" "my_volume_1" {
  # Required argument
  compartment_id="${var.my_oci_tenancy}"
  # Use the value from the data block instead
  # availability_domain="tpiZ:US-ASHBURN-AD-1"
  availability_domain="${data.oci_identity_availability_domains.ads.availability_domains.0.name}"
  display_name="My Volume 1"
  size_in_gbs="52"
}
data "oci_core_volume" "my_volume_1" {
  # Required
  volume_id=oci_core_volume.my_volume_1.id
}
