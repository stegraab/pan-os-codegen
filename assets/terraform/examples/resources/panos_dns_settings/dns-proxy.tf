resource "panos_dns_settings" "split_dns" {
  location = {
    template = {
      name = "firewall-template"
    }
  }

  dns_settings = {
    dns_proxy_object = panos_dns_proxy.split_dns.name
  }
}
