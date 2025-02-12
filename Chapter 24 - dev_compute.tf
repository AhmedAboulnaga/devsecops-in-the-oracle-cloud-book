resource "oci_core_instance" "dev_instance1" {
  # Required
  availability_domain="tpiZ:US-ASHBURN-AD-1"
  compartment_id=oci_identity_compartment.dev_compartment.id 
  # See https://docs.oracle.com/en-us/iaas/Content/Compute/References/computeshapes.htm#vmshapes__vm-standard
  shape="VM.Standard2.1"
  # See https://docs.oracle.com/en-us/iaas/images/ for image OCIDs
  source_details {
    # OCID for Oracle Linux 8 image in us-ashburn-1
    source_id=" ocid1.image.oc1.iad.aaaaaaaautmrqednxxohclxwgvawc42o2q6226lrbyte7nbe7hge6evbz7oq"
    source_type="image"
  }
  # Does not preserve the boot volume when the instance is terminated
  preserve_boot_volume=false
  # Display name
  display_name="dev-instance1"
  # Virtual network interface card
  create_vnic_details {
    assign_public_ip=true
    subnet_id=oci_core_subnet.dev_vcn_public_subnet.id
  }
  # Include public SSH key for the default opc user on the instance
  metadata = {
    ssh_authorized_keys="ssh-rsa AAAQAAA…HlISJw== oracloud-key-2023"
    # Use this if referencing a local file
    # ssh_authorized_keys=file("/home/oracle/opc_public.pub")
  }
}
