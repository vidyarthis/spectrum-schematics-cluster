##############################################################################
# Outputs
##############################################################################
output "cluster_master_ip" {
  value = "${element(compact(concat(ibm_is_floating_ip.fipmaster.address)),0)}"
}
output "symphony_dehost_ip" {
  value = "${join(" ", concat(ibm_is_floating_ip.fipdehosts.address))}"
}
output "cluster_web_interface" {
  value = "https://${element(compact(concat(ibm_is_floating_ip.fipmaster.address)),0)}:8443/platform"
}
