# Definition of variables to be used in the configuration files
variable "my_oci_tenancy" {
  type=string
  description="OCI Tenancy OCI"
}
variable "my_oci_user" {
  type=string
  description="OCI User OCID"
}
variable "my_oci_fingerprint" {
  type=string
  description="Oracle Cloud Fingerprint for the key pair"
}
variable "my_oci_privatekey" {
  type=string
  description="OCI API Private Key"
}
variable "my_oci_region" {
  type=string
  description="OCI Region"
}
variable "my_oci_Compartment" {
  type=string
  description="OCI Compartment OCID"
}
