terraform {
  required_providers {
    auth0 = {
      source  = "auth0/auth0"
      version = ">= 0.34" # Refer to docs for latest version
    }
  }
}

variable "auth0_domain" {}
variable "auth0_client_id" {}
variable "auth0_client_secret" {}
/* variable "auth0_admin_user_password" {} */

/* variable "api-identifier" {
  type    = string
  default = "https://terraform-express-resource-server"
} */


provider "auth0" {
  domain        = var.auth0_domain
  client_id     = var.auth0_client_id
  client_secret = var.auth0_client_secret
}

/* https://registry.terraform.io/providers/auth0/auth0/latest/docs/resources/client */
resource "auth0_client" "dorisappclient" {
  name            = "dorisappclient"
  description     = "test app doris client for auth0"
  app_type        = "regular_web"
  allowed_logout_urls = [ "http://localhost:3000" ]
  callbacks       = ["http://localhost:3000/callback", "http://localhost:3000/api/auth/callback"]
  oidc_conformant = true

  jwt_configuration {
    alg = "RS256"
  }
  is_first_party = true
}
