resource "digitalocean_droplet" "etcd1" {
  name = "etcd1"
  image = "${var.image_name}"
  region = "${var.region}"
  size = "${var.etcd_droplet_size}"
  ssh_keys = "${var.ssh_key_ids}"
  monitoring = true
  private_networking = true
  tags = [
    "${digitalocean_tag.etcd.id}",
    "${digitalocean_tag.first.id}"
  ]
}

resource "digitalocean_droplet" "etcd2" {
  name = "etcd2"
  image = "${var.image_name}"
  region = "${var.region}"
  size = "${var.etcd_droplet_size}"
  ssh_keys = "${var.ssh_key_ids}"
  monitoring = true
  private_networking = true
  tags = [
    "${digitalocean_tag.etcd.id}",
    "${digitalocean_tag.second.id}"
  ]
}

resource "digitalocean_droplet" "etcd3" {
  name = "etcd3"
  image = "${var.image_name}"
  region = "${var.region}"
  size = "${var.etcd_droplet_size}"
  ssh_keys = "${var.ssh_key_ids}"
  monitoring = true
  private_networking = true
  tags = [
    "${digitalocean_tag.etcd.id}",
    "${digitalocean_tag.third.id}"
  ]
}
