(1) Create auth0 app
(2) Create m2m app
(3) set env vars
export TF_VAR_auth0_domain=
export TF_VAR_auth0_client_id=
export TF_VAR_auth0_client_secret=

(4) terraform init 
(5) terraform apply


source:
Note: this blog is legacy implementation. it needs to verify terraform auth0 provider documentation for latest implementation.
https://auth0.com/blog/use-terraform-to-manage-your-auth0-configuration/