resource "azurerm_postgresql_flexible_server" "postgres_server" {
  name                = "p566-postgres-server"
  resource_group_name = azurerm_resource_group.p566.name
  location            = azurerm_resource_group.p566.location
  version             = "13"

  administrator_login    = var.postgres_admin_username
  administrator_password = var.postgres_admin_password

  sku_name = "GP_Standard_D4s_v3"

  storage_mb = 32768
}

resource "azurerm_postgresql_flexible_server_database" "postgres_primes_db" {
  name                = "primes"
  server_id           = azurerm_postgresql_flexible_server.postgres_server.id
  collation = "en_US.utf8"
  charset = "UTF8"
}
