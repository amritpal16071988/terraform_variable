variable "Gold" {}
variable "Silver" {}
variable "Bronze" {}
variable "Platinum" {}

resource "random_password" "Gold" {
  length           = 16
  special          = true
  for_each = toset( var.Gold )
  override_special = each.key
}
resource "random_password" "Silver" {
  length           = 16
  special          = true
  for_each = toset( var.Silver )
  override_special = each.key
}
resource "random_password" "Bronze" {
  length           = 16
  special          = true
  for_each = toset( var.Bronze )
  override_special = each.key
}
resource "random_password" "Platinum" {
  length           = 16
  special          = true
  for_each = toset( var.Platinum )
  override_special = each.key
}

