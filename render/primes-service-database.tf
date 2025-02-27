resource "render_postgres" "primes-service-database" {
  name    = "primes-service-database"
  plan    = "free"
  region  = "ohio"
  version = "16"

  database_name = "primes"
  database_user = "fred"

  environment_id = render_project.p566.environments.development.id
}
