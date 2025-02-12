resource "oci_database_autonomous_database" "devautonomousdatabase1" {
    # Required
    db_name="devautonomousdatabase1"
    compartment_id=oci_identity_compartment.dev_compartment.id
    # Optional
    admin_password="ComplexPassword_123"
    data_storage_size_in_tbs=1
    db_version="19c"
    db_workload="OLTP"
    display_name="dev-autonomousdatabase1"
    is_free_tier=false
    cpu_core_count=2
    subnet_id=oci_core_subnet.dev_vcn_private_subnet.id
    license_model="LICENSE_INCLUDED"
}
