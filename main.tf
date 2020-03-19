variable "token" {
  type=string
  description="Telegram Bot Token"
}

variable "admin" {
  type=string
  description="The ID of the Telegram Admin"
}

variable "do_token" {
  type=string
  description="DO tokens"
}

# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_droplet" "ehBot" {
  image  = "ubuntu-18-04-x64"
  name   = "wechat-telegram"
  region = "nyc3"
  size   = "s-1vcpu-1gb"
  ssh_keys = [26614621]
  tags = ["ehForwardBot", "WeChat", "Telegram", "Sync"]
  user_data = templatefile("userdata.tpl", {token=var.token, admin=var.admin})

}

