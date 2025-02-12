# Output the result
output "list_my_ads " {
value="${data.oci_identity_availability_domains.ads.availability_domains}"
}

output "list-my-volume" {
  value="${data.oci_core_volume.my_volume_1.id}"
}
