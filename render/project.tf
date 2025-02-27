resource "render_project" "p566" {
  name = "P566 - Spring 2025"

  environments = {
    "development" : {
      name : "development",
      protected_status : "unprotected"
    },
    "staging" : {
      name : "staging",
      protected_status : "protected"
    }
  }
}